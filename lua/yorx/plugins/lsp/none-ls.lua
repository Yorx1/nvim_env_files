return {
	"nvimtools/none-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local null_ls = require("null-ls") -- el nombre del módulo sigue siendo "null-ls"

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier.with({
					filetypes = { "json", "jsonc", "javascript", "typescript", "html", "css" }, -- incluye json
				}),
			},
		})

		-- Formateo manual con <leader>gf
		vim.keymap.set("n", "<leader>gf", function()
			vim.lsp.buf.format({ async = true })
		end, { desc = "Format buffer with LSP" })
	end,
}
