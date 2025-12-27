{
  description = "NixVim Pod | Neovim Pod | Neovim Project Oriented Development | No problem";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    alejandra.url = "github:kamadorueda/alejandra";
  };

  outputs = {
    self,
    nixpkgs,
    nixvim,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    formatter.${system} = pkgs.alejandra;

    packages.${system} = {
      np = nixvim.legacyPackages.${system}.makeNixvimWithModule {
        inherit pkgs;
        module = {
          imports = [
            ./modules/neovim
            ./nix/nixvim.nix
          ];
        };
      };
      default = self.packages.${system}.np;
    };

    apps.${system}.np = {
      type = "app";
      program = "${self.packages.${system}.np}/bin/nvim";
    };

    devShells.${system}.default = pkgs.mkShell {
      packages = [
        pkgs.lefthook

        (nixvim.legacyPackages.${system}.makeNixvimWithModule
          {
            inherit pkgs;
            module = {
              imports = [
                ./modules/neovim
                ./nix/nixvim.nix
              ];
            };
          })
      ];

      shellHook = ''
        if [ ! -f .git/hooks/pre-commit ]; then
          echo "Installing lefthook hooks..."
          lefthook install
        fi
      '';
    };
  };
}
