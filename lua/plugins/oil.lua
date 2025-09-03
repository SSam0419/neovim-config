return {
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup({})
    vim.keymap.set("n", "<leader>e", ":Oil<CR>", { desc = "Open oil" })
  end,
  lazy = false
}
