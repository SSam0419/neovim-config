return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.prettierd,

				null_ls.builtins.code_actions.refactoring,

				null_ls.builtins.completion.spell,

				-- Rust
				-- null_ls.builtins.formatting.rustfmt,
				-- null_ls.builtins.diagnostics.clippy,

				-- TOML (Cargo.toml)
				-- null_ls.builtins.formatting.taplo,
			},
		})
	end,
}
