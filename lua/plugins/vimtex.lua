-- This is necessary for VimTeX to load properly. The "indent" is optional.
-- Note: Most plugin managers will do this automatically!
--filetype plugin indent on
vim.filetype.plugin.indent = true

-- This enables Vim's and neovim's syntax-related features. Without this, some
-- VimTeX features will not work (see ":help vimtex-requirements" for more
-- info).
-- Note: Most plugin managers will do this automatically!
--syntax enable -- Idk how to translate this to lua :/

-- Viewer options: One may configure the viewer either by specifying a built-in
-- viewer method:
--let g:vimtex_view_method = 'zathura'
vim.g.vimtex_view_method = 'okular'

-- Or with a generic interface:
--let g:vimtex_view_general_viewer = 'okular'
vim.g.vimtex_view_general_viewer = 'okular'
--let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

-- VimTeX uses latexmk as the default compiler backend. If you use it, which is
-- strongly recommended, you probably don't need to configure anything. If you
-- want another compiler backend, you can change it as follows. The list of
-- supported backends and further explanation is provided in the documentation,
-- see ":help vimtex-compiler".
--let g:vimtex_compiler_method = 'latexrun'
vim.g.vimtex_compiler_method = 'latexrun'

