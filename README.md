# np

> [!NOTE]
>
> - `np` is NeoVim, NixVim, \_Next_Vim
> - `np` is NeoVim Pod, NixVim Pod, NextVim Pod
> - `np` is NeoPod, for Project Oriented Development
> - `np` is No Pollution - Setting up Neovim for project? No problem.
> - `np` is No Problem - when Setting up Neovim for a project.

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

This project is a movement towards my concept of POD.
See [POD.md](./POD.md) for details on the Project Oriented Development concept.

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

### Using Presets

For additional language support, import presets into your `nix/nixvim.nix`:

```nix
{ inputs, ... }:

{
  imports = [
    inputs.np.nixvimModules.base
    inputs.np.nixvimModules.presets.python  # Adds Python LSP, formatters, and tree-sitter
    inputs.np.nixvimModules.presets.rust    # Adds Rust LSP and tree-sitter
  ];

  # Your project-specific overrides
  plugins.lsp.servers.nil_ls.enable = false;  # Example override
}
```

Available presets: `cpp` (C/C++ with clangd), `docker` (Docker with dockerls),
`javascript` (JS/TS with biome/eslint), `make`, `python`, `rust`, `sql`, `web`
(full web stack), `xml`.

## Quick Preview

To try `np` without setting up a project, run the base configuration:

```bash
nix run .#np
```

This launches Neovim with the minimal base setup for a quick test.

## Default Experience

### Screenshots?

Yes, [some are here](./ss).

## FAQ

> Which language(s) support is configured out of the box?

**Answer**: Only Nix, Markdown, TOML/YAML, Bash, and Lua.

> Which languages are supported?

**Answer**: Many languages are provided as modules for opt-in basic support.
See [presets](./modules/presets/) for available options.

## Roadmap

See [Roadmap](./ROADMAP.md).
