return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope").setup({})
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>tf", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>tg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>td", builtin.diagnostics, { desc = "List diagnostics" })
		vim.keymap.set("n", "<leader>tb", builtin.buffers, { desc = "Telescope list buffers" })
	end,
}
