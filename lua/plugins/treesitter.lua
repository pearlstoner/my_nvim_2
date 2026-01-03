return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	opts = {
		ensure_installed = {
			"c",
			"lua",
			"vim",
			"vimdoc",
			"typescript",
			"javascript",
			"tsx",
			"html",
			"css",
			"go",
			"markdown",
			"odin",
			"cpp",
			"python",
			"java",
			"zig",
		},
		sync_install = false,
		highlight = {
			enable = true,
			use_languagetree = true,
			-- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
			-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
			-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
			-- Using this option may slow down your editor, and you may see some duplicate highlights.
			-- Instead of true it can also be a list of languages
			additional_vim_regex_highlighting = false,
		},
		indent = { enable = true },
	},
}
