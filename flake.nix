{
  description = "NixVim Pod | Neovim Pod | Neovim Project Oriented Development | No problem";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs = { ... }: {
    nixvimModules = {
      base = import ./modules/neovim;
    };
  };
}
