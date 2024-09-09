--open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selected up or down
--vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- cursor stuff
vim.keymap.set("n", "J", "mzJ'z") --keep cursor at front when using J
vim.keymap.set("n", "<C-d>", "<C-d>zz") --keep cursor in the middle
vim.keymap.set("n", "<C-u>", "<C-u>zz") --keep cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--vim.keymap.set("x", "<leader>p", '"_dp') --paste, but preserve register

-- TODO: Expand this for pastes, I want to move away from the default sys clip settings
vim.keymap.set("n", "<leader>y", '"+y') --yank into sys clip
vim.keymap.set("v", "<leader>y", '"+y')
--vim.keymap.set("n", "<leader>p", '"+p') --paste from sys clip -- done with Ctrl Shift V in kitty

-- Just select entire buffer
vim.keymap.set("n", "<leader>g", "ggVG")