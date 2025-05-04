return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter", -- Only load when entering insert mode
	dependencies = {
		"hrsh7th/cmp-nvim-lsp", -- LSP completion source
		"hrsh7th/cmp-buffer", -- Buffer completion source
		"hrsh7th/cmp-path", -- Path completion source
		-- If you use a snippet engine like LuaSnip:
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip") -- Assuming you use LuaSnip

		cmp.setup({
			sources = cmp.config.sources({
				{ name = "nvim_lsp" }, -- LSP suggestions (critical for auto-imports)
				{ name = "luasnip" }, -- Snippet suggestions
				{ name = "buffer" }, -- Words from the current buffer
				{ name = "path" }, -- File paths
			}),
			-- Configure the completion menu appearance
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			-- Set up keybindings for completion
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4), -- Scroll documentation up
				["<C-f>"] = cmp.mapping.scroll_docs(4), -- Scroll documentation down
				["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion
				["<C-e>"] = cmp.mapping.abort(), -- Cancel completion
				["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Accept the selected item
			}),
			-- Configuration for snippets
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body) -- Use LuaSnip to expand snippets
				end,
			},
			-- Add a cmdline source for command mode completion if needed
			-- cmdline = {
			--   sources = cmp.config.sources({
			--     { name = 'cmdline' },
			--   })
			-- },
			-- Add a path source for command mode path completion if needed
			-- path = {
			--   sources = cmp.config.sources({
			--     { name = 'path' },
			--   })
			-- },
		})

		-- You can set up different sources for different file types if needed,
		-- though the default setup with `nvim_lsp` active should work for
		-- most coding scenarios with Astro.
	end,
}
