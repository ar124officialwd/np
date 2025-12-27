{
  pkgs,
  stdenv,
  ...
}: {
  imports = [
    ./blink-cmp.nix
    ./bufferline.nix
    ./colorizer.nix
    ./conform.nix
    ./edgy.nix
    ./fzf-lua.nix
    ./lualine.nix
    ./mini.nix
    ./navic.nix
    ./neotree.nix
    ./noice.nix
    ./none-ls.nix
    ./snacks.nix
    ./which-key.nix
  ];

  plugins = {
    blink-cmp.enable = true;
    bufferline.enable = true;
    colorizer.enable = true;
    conform-nvim.enable = true;
    dap.enable = true;
    dap-ui.enable = true;
    dap-view.enable = true;
    dap-virtual-text.enable = true;
    edgy.enable = true;
    emmet.enable = true;
    fzf-lua.enable = false;
    git-conflict.enable = true;
    gitsigns.enable = true;
    grug-far.enable = true;
    lazydev.enable = true;
    lsp.enable = true;
    lsp-signature.enable = true;
    lsp-status.enable = true;
    lualine.enable = true;
    luau-lsp.enable = stdenv.hostPlatform.system != "x86_64-darwin";
    markview.enable = true;
    mini.enable = true;
    navic.enable = true;
    neo-tree.enable = true;
    noice.enable = true;
    none-ls.enable = true;
    nui.enable = true;
    snacks.enable = true;
    toggleterm.enable = true;
    ts-autotag.enable = true;
    ts-comments.enable = true;
    treesitter.enable = true;
    trouble.enable = true;
    web-devicons.enable = true;
    which-key.enable = true;
  };

  extraPlugins = with pkgs.vimPlugins; [
    plenary-nvim
    nvim-lsp-file-operations
  ];
}
