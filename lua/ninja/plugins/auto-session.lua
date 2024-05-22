return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enable = false,
      auto_session_suppress_dirs = { "~/", "~/Downloads", "~/Documents", "~/Desktop/" },
    })

    vim.keymap.set("n", "<leader>sr", "<cmd>SessionRestore<cr>", { desc = "Restore session for cwd" })
    vim.keymap.set("n", "<leader>ss", "<cmd>SessionSave<cr>", { desc = "Save session for auto session root dir" })
  end,
}
