{pkgs, ...}: {
  programs.nixvim.extraPackages = [
    pkgs.nodejs
  ];

  programs.nixvim.plugins.dap = {
    signs = {
      dapBreakpoint = {
        text = "●";
        texthl = "DapBreakpoint";
      };
      dapBreakpointCondition = {
        text = "⊚";
        texthl = "DapBreakpointCondition";
      };
      dapLogPoint = {
        text = "◆";
        texthl = "DapLogPoint";
      };
      dapStopped = {
        text = "▶";
        texthl = "DapStopped";
        linehl = "Visual";
        numhl = "DapStopped";
      };
      dapBreakpointRejected = {
        text = "⊘";
        texthl = "DapBreakpointRejected";
      };
    };

    adapters = {
      servers.pwa-node = {
        host = "localhost";
        port = "\${port}";

        executable = {
          command = "${pkgs.vscode-js-debug}/bin/js-debug";

          args = [
            "\${port}"
          ];
        };
      };
    };

    configurations = {
      javascript = [
        {
          type = "pwa-node";
          request = "launch";
          name = "Launch file";
          program = "\${file}";
          cwd = "\${workspaceFolder}";
          port = 9229;
        }
      ];
    };
  };
}
