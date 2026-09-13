{
  plugins.nvim-tree = {
    enable = true;

    settings = {
      disable_netrw = true;
      hijack_cursor = true;
      select_prompts = true;

      renderer = {
        full_name = true;
        highlight_git = true;
      };

      tab.sync = {
        open = true;
        close = true;
      };
    };
  };
}
