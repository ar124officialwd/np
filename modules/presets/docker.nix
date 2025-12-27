{pkgs, ...}: {
  lsp.servers.dockerls.enable = true;
  lsp.servers.docker_compose_ls.enable = true;

  plugins.treesitter.grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
    dockerfile
  ];
}
