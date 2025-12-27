{pkgs, ...}: {
  lsp.servers.basedpyright.enable = true;

  plugins.conform-nvim = {
    settings = {
      formatters_by_ft = {
        python = {
          __unkeyed-1 = "ruff";
          __unkeyed-2 = "black";
          stop_on_first = true;
        };
      };
    };
  };

  plugins.treesitter.grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
    python
  ];
}
