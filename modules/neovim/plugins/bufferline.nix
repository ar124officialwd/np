{...}: {
  programs.nixvim.plugins.bufferline.settings = {
    options = {
      always_show_bufferline = true;
      offsets = [
        {
          filetype = "neo-tree";
          text = "Neo-tree";
          highlight = "Directory";
          text_align = "left";
        }
        {
          filetype = "snacks_layout_box";
        }
      ];
    };
  };
}
