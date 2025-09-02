-- disable mouse
vim.opt.mouse = ""

-- set cursor to block
vim.opt.guicursor = "n-v-c-sm-i:block,ci-ve:ver25,r-cr-o:hor20"

-- always use relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true
--let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

-- cursorline
vim.opt.cursorline = true

vim.opt.swapfile = true
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 20
vim.opt.signcolumn = "yes" -- auto by default, force yes

vim.opt.updatetime = 100

vim.opt.colorcolumn = "80"

vim.opt.fillchars = "eob: "

--window cleanup
vim.opt.laststatus = 3 -- single, global statusline

-- Setting the background to be transparent is handled by autocommand

-- indenting and wrapping
vim.opt.breakindent = true
vim.opt.smartindent = true
--vim.opt.wrap = true
vim.opt.linebreak = true
--vim.opt.smoothscroll = true

-- show invisibles
vim.opt.list = true
--vim.opt.lcs.append = { 'space:•' }
--vim.opt.lcs.append = { 'trail:•' }
--vim.opt.lcs.append = { 'tab:|  ' }
vim.opt.showbreak = "|   "
vim.opt.listchars =
	{ -- This stuff is also set per bufftype in autocommands.lua, changes here may need to be copied over there
		--eol = "󱞥",
		--space = "•",
		trail = "•",
		tab = "| ",
		extends = "◀",
		precedes = "▶",
	}

-- tab settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true --use spaces by default

-- running java files:
--vim.keymap.set("n", "<F9>", "<cmd>!java %<CR>")
