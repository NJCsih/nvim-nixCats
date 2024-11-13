-- Contains remaps which allow for my preferred cursor centering.
-- very high scrolloff is insufficient and autocmding "CursorMoved" to zz is overbearing

-- Visual Mode(s)
vim.api.nvim_create_autocmd({ "CursorMoved" }, {
    -- pattern = { "bash"  -- make this not work on a terminal window
    callback = function()
        local currentMode = vim.api.nvim_get_mode().mode
        if (currentMode ~= 'n') then
            vim.cmd([[exec 'norm zz']])
        end
    end,
})
-- Normal Mode
--hjklHJKL
vim.keymap.set("n", "h", 'hzz') --yank into sys clip
vim.keymap.set("n", "j", 'jzz') --yank into sys clip
vim.keymap.set("n", "k", 'kzz') --yank into sys clip
vim.keymap.set("n", "l", 'lzz') --yank into sys clip
vim.keymap.set("n", "gh", 'ghzz') --yank into sys clip
vim.keymap.set("n", "gj", 'gjzz') --yank into sys clip
vim.keymap.set("n", "gk", 'gkzz') --yank into sys clip
vim.keymap.set("n", "gl", 'glzz') --yank into sys clip
--G
vim.keymap.set("n", "G", 'Gzz') --yank into sys clip
--^U ^D
vim.keymap.set("n", "<C-u>", 'Gzz') --yank into sys clip







