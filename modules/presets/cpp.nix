{pkgs, ...}: {
  imports = [
    ./make.nix
  ];

  lsp.servers.clangd.enable = true;

  plugins.treesitter.grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
    c
    cpp
  ];
}
