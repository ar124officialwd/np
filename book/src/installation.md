# Installation

## Prerequisites

- Nix with flakes enabled.
- Basic knowledge of Nix and NixVim.

## Quick Setup

1. Clone or add `np` as a flake input in your project.

2. Create `nix/nixvim.nix` in your project:

```nix
{ inputs, ... }:

{
  imports = [
    inputs.np.nixvimModules.base
    inputs.np.nixvimModules.presets.javascript
    # Add more presets as needed
  ];

  # Your overrides
}
```

1. In `flake.nix`, build Neovim:

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    np.url = "github:ar-at-localhost/np";
  };

  outputs = { self, nixpkgs, nixvim, np, ... }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = [
        (nixvim.legacyPackages.${system}.makeNixvimWithModule {
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
    };
  };
}
```

1. Enter the shell: `nix develop`

For a quick preview of `np`: `nix run .#np`
