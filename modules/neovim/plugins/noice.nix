{...}: {
  programs.nixvim.plugins.noice = {
    settings = {
      presets = {
        bottom_search = false;
        command_palette = true;
        inc_rename = true;
        long_message_to_split = true;
        lsp_doc_border = true;
      };

      lsp = {
        override = {
          "vim.lsp.util.convert_input_to_markdown_lines" = true;
          "vim.lsp.util.stylize_markdown" = true;
        };
      };
    };
  };
}
