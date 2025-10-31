return {
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup({})
    vim.keymap.set("n", "<leader>oo", ":Oil<CR>", { desc = "Open oil" })
  end,
  lazy = false
}
