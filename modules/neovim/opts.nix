{
  programs.nixvim.opts = {
    mouse = "";
    number = true;
    relativenumber = true;
    shiftwidth = 2;

    # --- Folds --- #
    foldlevel = 99;
    foldmethod = "indent";
    foldtext = "";

    fillchars = {
      foldopen = "";
      foldclose = "";
      fold = " ";
      foldsep = " ";
      diff = "╱";
      eob = " ";
    };
  };
}
