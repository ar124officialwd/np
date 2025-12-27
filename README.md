# np

> [!NOTE]
>
> - `np` is NeoVim, NixVim, \_Next_Vim
> - `np` is NeoVim Pod, NixVim Pod, NextVim Pod
> - `np` is NeoPod, No a Problem, Project Oriented Development

Thanks to Nvim, NixVim, Nix, LazyVim and many all plugin authors

---

> [!WARNING]
> I'm just initiating the project - and these modules,
> might be still polluting user home somewhere, though less likely.
> Goal is simple: Don't let it pollute your home or OS, so I'll
> improve it to ensure that it is really POD.

---

> [!WARNING]
> Docs are missing yet.

## Project Oriented Development

Thanks to Nix, I want to enter the era of Project Oriented Development.
The concept is simple --- development should be focused on projects, rather
than user OS or user Home space.

This is the first of my projects in this line - to enable my operations
focused on projects.

Unlike conventional editors like Zed and VSCode, where workspaces or project
config files easily provide tailored experiences, Neovim traditionally lacks
built-in project-specific configuration. This makes it challenging to customize
the editor per project without polluting the global setup. We don't want to
lose Neovim just because it doesn't behave project-specific.

This configuration of NixVim ships as a module, so you can import it,
override `nixvim` options to tailor your Nvim configuration per project,
and stop worrying about editor behaving badly - due to lack of project
specific configurations --- and don't pollute your OS or Home either.

## Usage

`np` provides a base NixVim configuration as a module. To configure a NixVim
project per project, follow this pattern:

- Create `nix/nixvim.nix` in your project for tailoring options:

```nix
{ inputs, ... }:

{
  imports = [ inputs.np.nixvimModules.base ];

  # Your project-specific NixVim module overrides
  plugins = {
    # Add or override plugins here
    lsp.servers.yourLanguage.enable = true;
  };

  # Other nixvim options to tailor for your project
}
```

- In your project's `flake.nix`, build and include the tailored Neovim as a dependency:

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    np.url = "github:ar124officialwd/np";  # or local path
  };

  outputs = { self, nixpkgs, nixvim, np, ... }: let
    system = "x86_64-linux";  # adjust for your system
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = [
        (nixvim.lib.${system}.mkNixvim {
          imports = [ ./nix/nixvim.nix ];
        }).neovim
      ];
    };
  };
}
```

This pattern keeps your project configuration organized and allows Nix to merge
the base `np` module with your project-specific overrides, creating a tailored
Neovim instance per project.

## Default Experience

### Screenshots?

Yes, [some are here](./ss).

## Roadmap

See [Roadmap](./ROADMAP.md).
