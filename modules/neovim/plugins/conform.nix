{...}: let
  web = {
    __unkeyed-1 = "biome";
    __unkeyed-2 = "prettierd";
    __unkeyed-3 = "prettier";
    stop_on_first = true;
  };
in {
  programs.nixvim.plugins.conform-nvim = {
    settings = {
      formatters_by_ft = {
        bash = ["shfmt"];
        css = web;
        html = web;
        json = web;
        javascript = web;
        javascriptreact = web;
        lua = ["stylua"];
        markdown = {
          __unkeyed_2 = "prettierd";
          __unkeyed_3 = "prettier";
          stop_on_first = true;
        };
        nix = ["alejandra"];
        python = {
          __unkeyed-1 = "ruff";
          __unkeyed-2 = "black";
          stop_on_first = true;
        };
        typescript = web;
        typescriptreact = web;
      };

      format_on_save = ''
        function(bufnr)
          -- Disable with a global or buffer-local variable
          if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
          end
          return { timeout_ms = 500, lsp_format = 'never' }
        end
      '';
    };
  };
}
