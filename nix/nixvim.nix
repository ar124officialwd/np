{
  lib,
  stdenv,
  ...
}: {
  clipboard = {
    providers = {
      wl-copy.enable = lib.strings.hasPrefix "linux" stdenv.hostPlatform.system;
    };
  };
}
