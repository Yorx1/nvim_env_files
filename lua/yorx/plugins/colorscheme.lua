return {
	"Shatur/neovim-ayu",
	lazy = false,
	priority = 1000,
	config = function()
		require("ayu").setup({
			dark = true,
		})
    vim.cmd([[colorscheme ayu]])

		vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#FFB454" })
		vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderIcon", { fg = "#59C2FF" })
		vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#C2D94C" })
		vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#59C2FF" })
		vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = "#FFB454", bold = false })
	end,
}
