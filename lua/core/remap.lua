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

-- Change window move commands to be better on colemak
vim.keymap.set("n", "<C-w><S-Left>",  "<C-w>h")
vim.keymap.set("n", "<C-w><S-Down>",  "<C-w>j")
vim.keymap.set("n", "<C-w><S-Up>",    "<C-w>k")
vim.keymap.set("n", "<C-w><S-Right>", "<C-w>l", {
  desc = "test",
})
require("which-key").add({
  { mode = "n", "<C-w><S-Left>",  icon = " ", desc = "Focus left" },
  { mode = "n", "<C-w><S-Down>",  icon = " ", desc = "Focus Down" },
  { mode = "n", "<C-w><S-Up>",    icon = " ", desc = "Focus Up" },
  { mode = "n", "<C-w><S-Right>", icon = " ", desc = "Focus Right" }
})
