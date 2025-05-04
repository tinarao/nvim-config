return {
	"Yazeed1s/minimal.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.minimal_italic_booleans = true

		require("minimal")
	end,
}
