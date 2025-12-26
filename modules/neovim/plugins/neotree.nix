{
  programs.nixvim.plugins.neo-tree = {
    enable = true;

    settings = {
      close_if_last_window = true;
      close_on_commands = true;
      filesystem = {
        window = {
          position = "left";
          width = 30;
        };

        follow_current_file = {
          enabled = true;
          leave_dirs_open = true;
        };
      };

      window = {
        mappings = {
          "<space>" = "none";
        };
      };
    };
  };
}
