-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      open_on_setup_file = true,
      update_focused_file = true,
      sync_root_with_cwd = true,
      use_libuv_file_watcher = true,
      follow_current_file = true,
      enable_git_status = true,
    }
  end,
}
