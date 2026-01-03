{
  plugins.neo-tree = {
    enable = true;

    luaConfig.pre = ''
      local function __np_snacks_on_move(data)
        Snacks.rename.on_rename_file(data.source, data.destination)
      end

      local __np_neo_tree_events = require("neo-tree.events")
    '';

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

      event_handlers.__raw = ''
        {
          {
            event = "file_renamed",
            handler = function (data)
              Snacks.rename.on_rename_file(data.source, data.destination)
            end
          },
          {
            event = "file_moved",
            handler = function (data)
              Snacks.rename.on_rename_file(data.source, data.destination)
            end
          }
        }
      '';
    };
  };
}
