local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = { -- https://patorjk.com/software/taag/#p=testall&v=0&f=Sony&t=NEOVIM
	"                                                                   ",
	"       ████ ██████           █████      ██ ██             ", -- I use nixos btw.
	"      ███████████             █████    ██      24 12 04       ",
	"      █████████ ████████████████  ███████████████     ",
	"     █████████  ███    █████████████████████████    ",
	"    █████████ ██████████ ███████████████ ████ ███   ",
	"  ███████████ ███    ███ ██████████████  ████  ███  ",
	" ██████  █████████████████████ █████████   ████   ███ ",

--	"      .-') _                            (`-.          _   .-')        ",
--	"     ( OO ) )                         _(OO  )_       ( '.( OO )_      ",
--	" ,--./ ,--,' ,------. .-'),-----. ,--(_/   ,. \\ ,--.  ,--.   ,--.)   ",
--	" |   \\ |  |\\ |  .---'( OO'  .-.  '\\   \\   /(__/ |  | ,|   `.'   | ",
--	" |    \\|  | )|  |    /   |  | |  | \\   \\ /   /  |  |(_|         |  ",
--	" |  .     |/ |  '--. \\_) |  |\\|  |  \\   '   /,  |  |  |  |'.'|  |  ",
--	" |  |\\    |  |  .--'   \\ |  | |  |   \\     /__),|  |  |  |   |  |  ",
--	" |  | \\   |  |  `---.   `'  '-'  '    \\   /     |  |  |  |   |  |   ",
--	" `--'  `--'  `------'     `-----'      `-'      `--'  `--'   `--'     ",
}

  dashboard.section.buttons.val = {
    dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("g", "  Vugitive", ":G <CR><C-w>j:q <CR>"),
    dashboard.button("r", "󰄉  Recently used files", ":Telescope oldfiles <CR>"),
    dashboard.button("f", "󰈞  Find file", ":Telescope fd <CR>"),
    --dashboard.button("t", "  Terminal" , ":term<CR>"),
    --dashboard.button("c", "  Configuration", ":e ~/.config/nvim<CR> cd"),
    dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
 return ""
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
--alpha.setup(dashboard.opts)

alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

