-- Keymaps

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Up, Down
vim.keymap.set('n', 'j', 'gj', { desc = 'Up', noremap = true})
vim.keymap.set('n', 'k', 'gk', { desc = 'Down', noremap = true})
vim.keymap.set("n", "<leader>of", "<CMD>Oil --float<CR>", { desc = "Open Oil float" })
vim.keymap.set("n", "<Tab>", function()
  vim.cmd(vim.bo.filetype == 'oil' and 'bd' or 'Oil')
end, { desc = "Toggle Oil" })
-- Define a keymap to open Lazygit
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { desc = "Open Lazygit" })
vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", { desc = "Open Terminal" })
