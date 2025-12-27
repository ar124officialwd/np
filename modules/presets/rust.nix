{pkgs, ...}: {
  lsp.servers.rust-analyzer.enable = true;

  plugins.treesitter.grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
    rust
  ];
}
