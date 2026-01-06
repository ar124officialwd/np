{
  autoCmd = [
    # --------- Restore session --------- #
    {
      event = "VimEnter";
      once = true;
      nested = true;
      callback.__raw = ''
        function()
          -- only restore when no arguments provided
          -- (nvim . and nvim dir/ are handled by neo-tree's auto-launch)
          if vim.fn.argc() > 0 then
            return
          end

          -- resolve project root (git only)
          local root
          do
            local out = vim.fn.systemlist({ "git", "rev-parse", "--show-toplevel" })
            if vim.v.shell_error == 0 and out[1] and out[1] ~= "" then
              root = out[1]
            else
              return  -- not a git repo, skip session management
            end
          end

          local session = root .. "/.nvim/session.vim"
          if vim.fn.filereadable(session) == 0 then
            return
          end

          -- defer to ensure plugins are loaded
          vim.defer_fn(function()
            vim.cmd("silent! source " .. vim.fn.fnameescape(session))
            if pcall(require, "neo-tree") then
              vim.cmd("Neotree focus")
            end
          end, 100)
        end
      '';
    }
    # --------- Save session --------- #
    {
      event = "VimLeavePre";
      callback.__raw = ''
        function()
          -- resolve project root (git only)
          local root
          do
            local out = vim.fn.systemlist({ "git", "rev-parse", "--show-toplevel" })
            if vim.v.shell_error == 0 and out[1] and out[1] ~= "" then
              root = out[1]
            else
              return  -- not a git repo, skip session management
            end
          end

          -- check if we have enough file buffers (minimum 1)
          local file_bufs = vim.tbl_filter(function(b)
            if vim.bo[b].buftype ~= "" then
              return false
            end
            if vim.tbl_contains({ "gitcommit", "gitrebase", "jj" }, vim.bo[b].filetype) then
              return false
            end
            return vim.api.nvim_buf_get_name(b) ~= ""
          end, vim.api.nvim_list_bufs())

          if #file_bufs < 1 then
            return
          end

          local dir = root .. "/.nvim"
          local session = dir .. "/session.vim"
          vim.fn.mkdir(dir, "p")

          -- ensure .nvim is git-ignored
          local gitignore = root .. "/.gitignore"
          local entry = ".nvim/"
          if vim.fn.filereadable(gitignore) == 0 then
            vim.fn.writefile({ entry }, gitignore)
          else
            local found = false
            for _, l in ipairs(vim.fn.readfile(gitignore)) do
              if l == entry then
                found = true
                break
              end
            end
            if not found then
              vim.fn.writefile({ entry }, gitignore, "a")
            end
          end

          if pcall(require, "neo-tree") then
            -- close neo-tree windows and delete buffers before saving
            for _, win in ipairs(vim.api.nvim_list_wins()) do
              local buf = vim.api.nvim_win_get_buf(win)
              if vim.bo[buf].filetype == "neo-tree" then
                pcall(vim.api.nvim_win_close, win, true)
              end
            end
            for _, buf in ipairs(vim.api.nvim_list_bufs()) do
              if vim.bo[buf].filetype == "neo-tree" then
                pcall(vim.api.nvim_buf_delete, buf, { force = true })
              end
            end
          end

          vim.cmd("silent! mksession! " .. vim.fn.fnameescape(session))
        end
      '';
    }
  ];
}
