{...}: {
  programs.nixvim.colorschemes.catppuccin = {
    enable = true;
    settings = {
      integrations = {
        blink_cmp = true;
        blink_indent = true;
        fzf = true;
        gitsigns = true;
        grug_far = true;
        markview = true;
        mini = true;
        neotree = true;
        noice = true;
        render_markdown = true;
        snacks = true;
        lsp_trouble = true;
        which_key = true;
      };
    };
  };
}
