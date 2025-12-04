return {
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup({})
    vim.keymap.set("n", "<leader>o", ":Oil<CR>", { desc = "Open oil" })
  end,
  lazy = false
}
