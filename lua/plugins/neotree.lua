return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	-- lazy = false, -- neo-tree will lazily load itself
	opts = {
		window = {
			position = "right", -- Or "right", "top", "bottom"
			width = 30, -- Adjust to your preferred width
			-- You can add other window options here if needed
		},
		-- ... other opts
	},
}
