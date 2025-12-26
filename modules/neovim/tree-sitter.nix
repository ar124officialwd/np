{pkgs, ...}: {
  programs.nixvim.plugins.treesitter = {
    folding = true;
    nixvimInjections = true;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      c
      cpp
      css
      html
      http
      dockerfile
      javascript
      json
      lua
      make
      markdown
      nix
      python
      regex
      rust
      sql
      toml
      tsx
      typescript
      vim
      vimdoc
      xml
      yaml
    ];
  };
}
