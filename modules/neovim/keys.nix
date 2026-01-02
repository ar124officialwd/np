{
  keymaps = [
    # --------- Windows --------- #
    {
      mode = "n";
      key = "<leader>wh";
      action = "<C-w>h";
      options.desc = "Window: Go to Left";
    }
    {
      mode = "n";
      key = "<leader>wj";
      action = "<C-w>j";
      options.desc = "Window: Go to Lower";
    }
    {
      mode = "n";
      key = "<leader>wk";
      action = "<C-w>k";
      options.desc = "Window: Go to Upper";
    }
    {
      mode = "n";
      key = "<leader>wl";
      action = "<C-w>l";
      options.desc = "Window: Go to Right";
    }

    {
      mode = "n";
      key = "<leader>w+";
      action = "<C-w>+";
      options.desc = "Window: Increase Height";
    }
    {
      mode = "n";
      key = "<leader>w-";
      action = "<C-w>-";
      options.desc = "Window: Decrease Height";
    }
    {
      mode = "n";
      key = "<leader>w<";
      action = "<C-w><";
      options.desc = "Window: Decrease Width";
    }
    {
      mode = "n";
      key = "<leader>w>";
      action = "<C-w>>";
      options.desc = "Window: Increase Width";
    }
    {
      mode = "n";
      key = "<leader>wq";
      action = "<C-w>>";
      options.desc = "Window: Increase Width";
    }
    {
      mode = "n";
      key = "<leader>wq";
      action = "<C-w>c";
      options.desc = "Window: Close";
    }
    {
      mode = "n";
      key = "<leader>w-";
      action = ":split<CR>";
      options.desc = "Window: Split Below";
    }
    {
      mode = "n";
      key = "<leader>w|";
      action = ":vsplit<CR>";
      options.desc = "Window: Split Right";
    }

    # --------- Buffers --------- #
    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>bprevious<CR>";
      options.desc = "Buffers: Switch to Left (Previous)";
    }
    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>bnext<CR>";
      options.desc = "Buffers: Switch to Right (Next)";
    }
    {
      mode = "n";
      key = "<leader>bb";
      action = "<C-^>";
      options.desc = "Buffers: Switch to Other";
    }
    {
      mode = "n";
      key = "<leader>bh";
      action = "<cmd>bprevious<CR>";
      options.desc = "Buffers: Switch to Left (Previous)";
    }
    {
      mode = "n";
      key = "<leader>bl";
      action = "<cmd>bnext<CR>";
      options.desc = "Buffers: Switch to Right (Next)";
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>lua Snacks.bufdelete()<CR>";
      options.desc = "Buffers: Delete Current";
    }
    {
      mode = "n";
      key = "<leader>bo";
      action = "<cmd>BufferLineCloseOthers<CR>";
      options.desc = "Buffers: Delete Other";
    }
    {
      mode = "n";
      key = "<leader>bs";
      action = "<cmd>lua Snacks.picker.buffers()<CR>";
      options.desc = "Buffers: Search";
    }
    {
      mode = "n";
      key = "<leader>bp";
      action = "<cmd>BufferLineTogglePin";
      options.desc = "Buffers: Toggle Pin";
    }

    #  --------- Tabs --------- #
    {
      mode = "n";
      key = "<leader><tab>L";
      action = "<cmd>tablast<CR>";
      options.desc = "Last Tab";
    }
    {
      mode = "n";
      key = "<leader><tab>F";
      action = "<cmd>tabfirst<CR>";
      options.desc = "First Tab";
    }
    {
      mode = "n";
      key = "<leader><tab><tab>";
      action = "<cmd>tabnew<CR>";
      options.desc = "New Tab";
    }
    {
      mode = "n";
      key = "<leader><tab>l";
      action = "<cmd>tabnext<CR>";
      options.desc = "Next Tab";
    }
    {
      mode = "n";
      key = "<leader><tab>h";
      action = "<cmd>tabprevious<CR>";
      options.desc = "Previous Tab";
    }
    {
      mode = "n";
      key = "<leader><tab>c";
      action = "<cmd>tabclose<CR>";
      options.desc = "Close Tab";
    }
    {
      mode = "n";
      key = "<leader><tab>o";
      action = "<cmd>tabonly<CR>";
      options.desc = "Close Other Tabs";
    }

    #  --------- Explorer --------- #
    {
      mode = "n";
      key = "<leader>er";
      action = "<cmd>Neotree reveal<CR>";
      options.desc = "Explorer: Reveal";
    }

    {
      mode = "n";
      key = "<leader>et";
      action = "<cmd>Neotree toggle<CR>";
      options.desc = "Explorer: Toggle";
    }

    {
      mode = "n";
      key = "<leader>ef";
      action = "<cmd>Neotree float<CR>";
      options.desc = "Explorer: Floating mode";
    }

    {
      mode = "n";
      key = "<leader>ec";
      action = "<cmd>Neotree close<CR>";
      options.desc = "Explorer: Close";
    }

    # --------- Code & LSP --------- #
    {
      mode = "n";
      key = "<leader>cr";
      action = "<cmd>lua vim.lsp.buf.rename()<CR>";
      options = {
        desc = "LSP: Rename";
      };
    }
    {
      mode = "n";
      key = "<leader>ca";
      action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
      options = {
        desc = "LSP: Actions";
      };
    }
    {
      mode = "n";
      key = "<leader>cd";
      action = "<cmd>lua Snacks.picker.lsp_definitions()<CR>";
      options = {
        desc = "LSP: Definitions";
      };
    }
    {
      mode = "n";
      key = "<leader>cD";
      action = "<cmd>lua Snacks.picker.lsp_declarations()<CR>";
      options = {
        desc = "LSP: Declarations";
      };
    }
    {
      mode = "n";
      key = "<leader>ct";
      action = "<cmd>lua Snacks.picker.lsp_type_definitions()<CR>";
      options = {
        desc = "LSP: Type Definitions";
      };
    }
    {
      mode = "n";
      key = "<leader>cT";
      action = "<cmd>Trouble diagnostics<CR>";
      options = {
        desc = "LSP: Diagnostics (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>cR";
      action = "<cmd>lua Snacks.picker.lsp_references()<CR>";
      options = {
        desc = "LSP: References";
      };
    }
    {
      mode = "n";
      key = "<leader>ci";
      action = "<cmd>lua Snacks.picker.lsp_implementations()<CR>";
      options = {
        desc = "LSP: Implementations";
      };
    }
    {
      mode = "n";
      key = "<leader>cs";
      action = "<cmd>lua Snacks.picker.lsp_symbols()<CR>";
      options = {
        desc = "LSP: Symbols";
      };
    }
    {
      mode = "n";
      key = "<leader>cS";
      action = "<cmd>lua Snacks.picker.lsp_workspace_symbols()<CR>";
      options = {
        desc = "LSP: Symbols (Workspace)";
      };
    }
    {
      mode = "n";
      key = "<leader>ce";
      action = "<cmd>lua Snacks.picker.diagnostics_buffer()<CR>";
      options = {
        desc = "LSP: Diagnostics (Document)";
      };
    }
    {
      mode = "n";
      key = "<leader>cE";
      action = "<cmd>lua Snacks.picker.diagnostics()<CR>";
      options = {
        desc = "LSP: Diagnostics (Workspace)";
      };
    }
    {
      mode = "n";
      key = "<leader>c[";
      action = ":lua vim.diagnostic.goto_next()<CR>";
      options.desc = "LSP: Next Diagnostic";
    }
    {
      mode = "n";
      key = "<leader>c]";
      action = ":lua vim.diagnostic.goto_prev()<CR>";
      options.desc = "LSP: Previous Diagnostic";
    }
    {
      mode = "n";
      key = "<leader>c{";
      action = ":lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<CR>";
      options.desc = "LSP: Next Error";
    }
    {
      mode = "n";
      key = "<leader>c}";
      action = ":lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<CR>";
      options.desc = "LSP: Previous Error";
    }
    {
      mode = "n";
      key = "<leader>c(";
      action = ":lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.WARN})<CR>";
      options.desc = "LSP: Next Warning";
    }
    {
      mode = "n";
      key = "<leader>c)";
      action = ":lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.WARN})<CR>";
      options.desc = "LSP: Previous Warning";
    }
    {
      mode = "n";
      key = "<leader>ccj";
      action = "o<Esc>gcc";
      options.desc = "Code: Add Comment Below";
    }
    {
      mode = "n";
      key = "<leader>cck";
      action = "O<Esc>gcc";
      options.desc = "Code: Add Comment Above";
    }
    {
      mode = "n";
      key = "<leader>cI";
      action = "<cmd>lua Snacks.picker.lsp_config()<CR>";
      options.desc = "Code: LSP Info";
    }
    {
      mode = "n";
      key = "<leader>co";
      action.__raw = ''
        function()
          vim.lsp.buf.code_action({
            apply = true,
            context = {
              only = { "source.organizeImports" },
              diagnostics = {},
            },
          })
        end
      '';
      options.desc = "Code: Organize Imports";
    }
    {
      mode = "n";
      key = "<leader>cu";
      action.__raw = ''
        function()
          vim.lsp.buf.code_action({
            apply = true,

            context = {
              only = {
                "source.removeUnusedImports"
              },
              diagnostics = {},
            },
          })
        end
      '';
      options.desc = "Code: Remove unused imports";
    }
    {
      mode = "n";
      key = "<leader>cU";
      action.__raw = ''
        function()
          vim.lsp.buf.code_action({
            apply = true,

            context = {
              only = {
                "source.removeUnused"
              },
              diagnostics = {},
            },
          })
        end
      '';
      options.desc = "Code: Remove unused";
    }
    {
      mode = ["n" "v"];
      key = "<leader>cf";
      action = "<cmd>lua require('conform').format({ async = true }) <CR>";
      options.desc = "Code: Format";
    }

    # Search
    {
      mode = "n";
      key = "<leader>sf";
      action = "<cmd>lua Snacks.picker.files()<CR>";
      options.desc = "Search: Files";
    }
    {
      mode = "n";
      key = "<leader>sb";
      action = "<cmd>lua Snacks.picker.buffers()<CR>";
      options.desc = "Search: Buffers";
    }
    {
      mode = "n";
      key = "<leader>sg";
      action = "<cmd>lua Snacks.picker.grep()<CR>";
      options.desc = "Search: Grep";
    }
    {
      mode = "n";
      key = "<leader>sr";
      action = "<cmd>GrugFar<CR>";
      options.desc = "Search: & Replace";
    }

    # --------- Git --------- #
    {
      mode = "n";
      key = "<leader>gu";
      action = "<cmd>lua Snacks.lazygit.open()<CR>";
      options.desc = "Git: Open";
    }
    {
      mode = "n";
      key = "<leader>gl";
      action = "<cmd>lua Snacks.picker.git_log()<CR>";
      options.desc = "Git: Log";
    }
    {
      mode = "n";
      key = "<leader>gd";
      action = "<cmd>lua Snacks.picker.git_diff()<CR>";
      options.desc = "Git: Diff (Picker)";
    }
    {
      mode = "n";
      key = "<leader>gD";
      action.__raw = ''
        function()
           if vim.t.diffview_view_initialized then
             vim.cmd("DiffviewClose")
           else
             vim.cmd("DiffviewOpen")
           end
        end
      '';
      options.desc = "Git: Diff (Toggle Diffview)";
    }
    {
      mode = "n";
      key = "<leader>gb";
      action = "<cmd>Gitsigns blame_line<CR>";
      options.desc = "Git: Blame Line";
    }
    {
      mode = "n";
      key = "<leader>gB";
      action = "<cmd>Gitsigns blame<CR>";
      options.desc = "Git: Blame Buffer";
    }
    {
      mode = "n";
      key = "<leader>gj";
      action = "<cmd>Gitsigns next_hunk<CR>";
      options.desc = "Git: Hunk Next";
    }
    {
      mode = "n";
      key = "<leader>gk";
      action = "<cmd>Gitsigns prev_hunk<CR>";
      options.desc = "Git: Hunk Previous";
    }
    {
      mode = "n";
      key = "<leader>ghs";
      action = "<cmd>Gitsigns stage_hunk<CR>";
      options.desc = "Git: Hunk Stage";
    }
    {
      mode = "n";
      key = "<leader>ghr";
      action = "<cmd>Gitsigns reset_hunk<CR>";
      options.desc = "Git: Hunk Reset";
    }
    {
      mode = "n";
      key = "<leader>gp";
      action = "<cmd>Gitsigns preview_hunk_inline<CR>";
      options.desc = "Git: Hunk Preview";
    }
    {
      mode = "n";
      key = "<leader>g+";
      action = "<cmd>Gitsigns stage_buffer<CR>";
      options.desc = "Git: Stage Buffer";
    }
    {
      mode = "n";
      key = "<leader>g-";
      action = "<cmd>Gitsigns reset_buffer<CR>";
      options.desc = "Git: Reset Buffer";
    }
    {
      mode = "n";
      key = "<leader>gS";
      action = "<cmd>lua Snacks.picker.git_status()<CR>";
      options.desc = "Git: Status";
    }

    # --------- Notifications --------- #
    {
      mode = "n";
      key = "<leader>ns";
      action = "<cmd>lua Snacks.picker.notifications()<CR>";
      options.desc = "Notifications: History";
    }
    {
      mode = "n";
      key = "<leader>na";
      action = "<cmd>Noice all<CR>";
      options.desc = "Notifications: Show History (ALL)";
    }
    {
      mode = "n";
      key = "<leader>nd";
      action = "<cmd>Noice dismiss<CR>";
      options.desc = "Notifications: Dimiss";
    }

    # --------- Session --------- #
    {
      mode = "n";
      key = "<leader>sl";
      action = "<cmd>lua require('persistence').load({ last = true })<CR>";
      options.desc = "Session: Load";
    }
    {
      mode = "n";
      key = "<leader>ss";
      action = "<cmd>lua require('persistence').select()<CR>";
      options.desc = "Session: Select";
    }
    {
      mode = "n";
      key = "<leader>sS";
      action = "<cmd>lua require('persistence').stop()<CR>";
      options.desc = "Session: Stop saving";
    }

    # --------- Debugger --------- #
    {
      mode = "n";
      key = "<leader>db";
      action = "<cmd>lua require('dap').toggle_breakpoint()<CR>";
      options.desc = "Debug: Breakpoint Toggle";
    }
    {
      mode = "n";
      key = "<leader>dB";
      action = "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>";
      options.desc = "Debug: Breakpoint Add (Conditional)";
    }
    {
      mode = "n";
      key = "<leader>dc";
      action = "<cmd>DapContinue<CR>";
      options.desc = "Debug: Breakpoint Add (Conditional)";
    }
    {
      mode = "n";
      key = "<leader>dC";
      action = "<cmd>DapClearBreakpoints<CR>";
      options.desc = "Debug: Clear Breakpoints";
    }
    {
      mode = "n";
      key = "<leader>dd";
      action = "<cmd>DapDisconnect<CR>";
      options.desc = "Debug: Disconnect";
    }
    {
      mode = "n";
      key = "<leader>ds";
      action = "<cmd>DapNew<CR>";
      options.desc = "Debug: Session";
    }
    {
      mode = "n";
      key = "<leader>dl";
      action = "<cmd>DapShowLogs<CR>";
      options.desc = "Debug: DAP Logs";
    }
    {
      mode = "n";
      key = "<leader>dq";
      action = "<cmd>lua require('dap').terminate()<CR>";
      options.desc = "Debug: Terminate";
    }
    {
      mode = "n";
      key = "<leader>du";
      action = "<cmd>DapViewToggle<CR>";
      options.desc = "Debug: UI (DAP View)";
    }
    {
      mode = "n";
      key = "<leader>dU";
      action = "<cmd>lua require('dapui').toggle()<CR>";
      options.desc = "Debug: UI (DAP UI)";
    }
    {
      mode = "n";
      key = "<leader>di";
      action = "<cmd>DapStepInto<CR>";
      options.desc = "Debug: Step Into";
    }
    {
      mode = "n";
      key = "<leader>do";
      action = "<cmd>DapStepOut<CR>";
      options.desc = "Debug: Step Out";
    }
    {
      mode = "n";
      key = "<leader>dO";
      action = "<cmd>DapStepOver<CR>";
      options.desc = "Debug: Step Over";
    }
    {
      key = "<leader>dp";
      mode = "n";
      options.desc = "DAP: Pick & run (Buffer)";

      action.__raw = ''
        function ()
          local dap = require("dap")

          local ft = vim.bo.filetype
          local configs = dap.configurations[ft] or {}

          if #configs == 0 then
            print("No DAP configurations for filetype: " .. ft)
            return
          end

          vim.ui.select(configs, {
            prompt = "Select DAP Configuration (" .. ft .. ")",
            format_item = function(item)
              return item.name
            end,
          }, function(choice)
            if choice then
              dap.run(choice)
            end
          end)
        end
      '';
    }
    {
      key = "<leader>dP";
      mode = "n";
      options.desc = "DAP: Pick & run (Workspace)";

      action.__raw = ''
        function ()
          local dap = require("dap")
          local all_configs = {}

          -- Gather all configurations from all filetypes
          for ft, configs in pairs(dap.configurations) do
            for _, config in ipairs(configs) do
              table.insert(all_configs, { name = config.name, config = config })
            end
          end

          if #all_configs == 0 then
            print("No DAP configurations available")
            return
          end

          -- Use vim.ui.select
          vim.ui.select(all_configs, {
            prompt = "Select DAP Configuration",
            format_item = function(item)
              return item.name
            end,
          }, function(choice)
            if choice then
              dap.run(choice.config)
            end
          end)
        end
      '';
    }

    # --------- Misc --------- #
    {
      mode = [
        "n"
        "i"
        "v"
      ];
      key = "<A-j>";
      action = ":m .+1<CR>==";
      options.desc = "Move Down";
    }
    {
      mode = [
        "n"
        "i"
        "v"
      ];
      key = "<A-k>";
      action = ":m .-2<CR>==";
      options.desc = "Move Up";
    }
    {
      mode = [
        "n"
        "i"
        "t"
      ];
      key = "<C-/>";
      action = "<cmd>lua Snacks.terminal()<CR>";
      options.desc = "Terminal: Toggle ";
    }

    #  --------- Search --------- #
    {
      mode = [
        "n"
        "x"
        "o"
      ];
      key = "n";
      action = "nzz";
      options.desc = "Next Search Result";
    }
    {
      mode = [
        "n"
        "x"
        "o"
      ];
      key = "N";
      action = "Nzz";
      options.desc = "Prev Search Result";
    }

    #  --------- Files --------- #
    {
      mode = "n";
      key = "<leader>fn";
      action = ":ene<CR>";
      options.desc = "New File";
    }

    # Save
    {
      mode = [
        "i"
        "x"
        "n"
        "s"
      ];
      key = "<C-s>";
      action = "<esc>:w<CR>";
      options.desc = "Save File";
    }

    # --------- Monorepos / Multi-Directories Sessions --------- #
    {
      mode = "n";
      key = "<leader>mn";
      action = "<cmd>Not yet Implemented!<CR>";
      options.desc = "MDE: New Space";
    }
  ];
}
