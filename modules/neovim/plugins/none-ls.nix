{...}: {
  plugins.none-ls = {
    enableLspFormat = false;
    sources = {
      diagnostics.markdownlint_cli2.enable = true;
      formatting.markdownlint.enable = true;
      formatting.nix_flake_fmt.enable = true;
    };
  };
}
