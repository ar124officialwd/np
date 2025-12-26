{...}: {
  programs.nixvim.lsp.enable = true;
  programs.nixvim.lsp.inlayHints.enable = true;
  programs.nixvim.lsp.servers.basedpyright.enable = true;

  programs.nixvim.lsp.servers.biome.config = {
    enable = true;
    require_config_file = true;
  };

  programs.nixvim.lsp.servers.cssls.enable = true;
  programs.nixvim.lsp.servers.dockerls.enable = true;
  programs.nixvim.lsp.servers.docker_compose_ls.enable = true;
  programs.nixvim.lsp.servers.eslint.enable = true;
  programs.nixvim.lsp.servers.html.enable = true;
  programs.nixvim.lsp.servers.lua_ls.enable = true;
  programs.nixvim.lsp.servers.jsonls.enable = true;
  programs.nixvim.lsp.servers.marksman.enable = true;
  programs.nixvim.lsp.servers.nil_ls.enable = true;
  programs.nixvim.lsp.servers.tailwindcss.enable = true;
  programs.nixvim.lsp.servers.taplo.enable = true;
  programs.nixvim.lsp.servers.vtsls.enable = true;
  programs.nixvim.lsp.servers.yamlls.enable = true;

  programs.nixvim.lsp.keymaps = [
    {
      key = "cd";
      lspBufAction = "definition";
    }
    {
      key = "cD";
      lspBufAction = "references";
    }
    {
      key = "ct";
      lspBufAction = "type_definition";
    }
    {
      key = "ci";
      lspBufAction = "implementation";
    }
  ];

  programs.nixvim.diagnostic.settings = {
    underline = true;
    update_in_insert = false;
    severity_sort = true;

    virtual_text = {
      spacing = 4;
      source = "if_many";
      prefix = " ●";
    };

    signs = {
      text = {
        "__rawKey__vim.diagnostic.severity.ERROR" = " ";
        "__rawKey__vim.diagnostic.severity.WARN" = " ";
        "__rawKey__vim.diagnostic.severity.HINT" = " ";
        "__rawKey__vim.diagnostic.severity.INFO" = " ";
      };

      texthl = {
        "__rawKey__vim.diagnostic.severity.ERROR" = "DiagnosticError";
        "__rawKey__vim.diagnostic.severity.WARN" = "DiagnosticWarn";
        "__rawKey__vim.diagnostic.severity.HINT" = "DiagnosticHint";
        "__rawKey__vim.diagnostic.severity.INFO" = "DiagnosticInfo";
      };
    };
  };
}
