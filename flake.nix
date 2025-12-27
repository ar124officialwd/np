{
  description = "NixVim Pod | Neovim Pod | Neovim Project Oriented Development | No problem";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    alejandra.url = "github:kamadorueda/alejandra";
  };

  outputs = {nixpkgs, ...}: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixvimModules = {
      base = import ./modules/neovim;
    };

    formatter.${system} = pkgs.alejandra;

    devShells.${system}.default = pkgs.mkShell {
      packages = [pkgs.lefthook];

      shellHook = ''
        if [ ! -f .git/hooks/pre-commit ]; then
          echo "Installing lefthook hooks..."
          lefthook install
        fi
      '';
    };
  };
}
