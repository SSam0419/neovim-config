return {
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"gopls",
					"rust_analyzer",
					"clangd",
				},
			})
		end,
	},
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			-- lua language server
			lspconfig.lua_ls.setup({})

			-- typescript/javascript/react/next.js
			lspconfig.ts_ls.setup({})

			-- go language server
			lspconfig.gopls.setup({})

			-- cpp language server
			lspconfig.clangd.setup({})

			-- gleam
			lspconfig.gleam.setup({})

			-- rust
			lspconfig.rust_analyzer.setup({
				settings = {
					["rust-analyzer"] = {
						check = { command = "clippy" },
						procMacro = { enable = true },
					},
				},
			})

			-- hover documentation
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

			-- go to definition
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})

			-- go to declaration
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})

			-- find references
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})

			-- go to implementation
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})

			-- rename variable/function
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})

			-- code actions (fixes/refactoring)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

			-- code actions (import)
			vim.keymap.set("n", "<leader>ci", function()
				vim.lsp.buf.code_action({
					filter = function(action)
						return action.kind and string.match(action.kind, "source%..*import")
					end,
					apply = true,
				})
			end, { desc = "Auto import" })

			-- show diagnostics in floating window
			vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, {})

			-- go to next/previous diagnostic
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})

			-- format document
			vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
		end,
	},
}
