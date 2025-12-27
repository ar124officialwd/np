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
    systems = ["x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin"];
    forEachSystem = nixpkgs.lib.genAttrs systems;
  in {
    formatter = forEachSystem (
      system:
        nixpkgs.legacyPackages.${system}.alejandra
    );

    packages = forEachSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      np = nixvim.legacyPackages.${system}.makeNixvimWithModule {
        inherit pkgs;
        module = {
          imports = [
            ./modules/neovim
            ./nix/nixvim.nix
          ];
        };
        extraSpecialArgs = {stdenv = pkgs.stdenv;};
      };
      default = self.packages.${system}.np;
    });

    apps = forEachSystem (system: {
      np = {
        type = "app";
        program = "${self.packages.${system}.np}/bin/nvim";
        meta = {
          description = "Neovim with np configuration";
        };
      };
    });

    devShells = forEachSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      default = pkgs.mkShell {
        packages = [
          pkgs.lefthook
          pkgs.markdownlint-cli
          pkgs.mdbook
          (nixvim.legacyPackages.${system}.makeNixvimWithModule
            {
              inherit pkgs;
              module = {
                imports = [
                  ./modules/neovim
                  ./nix/nixvim.nix
                ];
              };
              extraSpecialArgs = {stdenv = pkgs.stdenv;};
            })
        ];

        shellHook = ''
          if [ ! -f .git/hooks/pre-commit ]; then
            echo "Installing lefthook hooks..."
            lefthook install
          fi
        '';
      };
    });
  };
}
