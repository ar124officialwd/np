{...}: {
  programs.nixvim.plugins.colorizer.settings = {
    user_commands = true;
    user_default_options = {
      names = false;
      tailwind = "both";
      tailwind_opts = {
        update_names = false;
      };
    };
  };
}
