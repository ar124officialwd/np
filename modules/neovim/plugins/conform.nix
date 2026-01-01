{...}: let
  web = {
    __unkeyed-1 = "biome";
    __unkeyed-2 = "prettierd";
    __unkeyed-3 = "prettier";
    stop_on_first = true;
  };
in {
  plugins.conform-nvim = {
    settings = {
      formatters_by_ft = {
        bash = ["shfmt"];
        json = web;
        lua = ["stylua"];
        markdown = {
          __unkeyed-2 = "prettierd";
          __unkeyed-3 = "prettier";
          stop_on_first = true;
        };
        nix = ["alejandra"];
        typescript = web;
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
