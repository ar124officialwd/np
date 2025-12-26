{...}: {
  programs.nixvim.plugins.mini.modules = {
    ai = {};
    comment = {
      mappings = {
        comment = "<leader>/";
        comment_line = "<leader>/";
        comment_visual = "<leader>/";
        textobject = "<leader>/";
      };
    };
    diff = {
      view = {
        style = "sign";
      };
    };
    notify = {};
    pairs = {};
    surround = {
      mappings = {
        add = "gsa";
        delete = "gsd";
        find = "gsf";
        find_left = "gsF";
        highlight = "gsh";
        replace = "gsr";
        suffix_last = "l";
        suffix_next = "n";
      };
    };
  };
}
