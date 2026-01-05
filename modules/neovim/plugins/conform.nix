_: let
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
        nix = ["alejandra"];
        markdown = ["prettierd" "prettier"];
      };

      format_on_save = ''
        function(bufnr)
          -- Disable with a global or buffer-local variable
          if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
          end
          return { timeout_ms = 500, lsp_format = 'fallback' }
        end
      '';
    };
  };
}
