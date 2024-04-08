return {
    'nvim-treesitter/nvim-treesitter',
	tag = 'v0.9.2',
	build = ':TSUpdate',
	config = function ()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"elixir",
				"heex",
				"javascript",
				"java",
				"html",
				"css",
				"python",
				"cpp",
				"go",
				"json",
				"sql",
				"toml",
				"xml",
				"yaml",
				"bash",
				"csv",
				"dockerfile",
				"ini",
				"rust"
    },
	sync_install = false,
	highlight = { enable = true },
	ident = { enable = true },
		})
	
	end

}
