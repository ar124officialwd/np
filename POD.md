# Project Oriented Development

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