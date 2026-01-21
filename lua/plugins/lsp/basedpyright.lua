vim.lsp.enable('basedpyright')
vim.lsp.config('basedpyright', {
  cmd = { 'basedpyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = {
    'pyrightconfig.json',
    'pyproject.toml',
    'setup.py',
    'setup.cfg',
    'requirements.txt',
    'Pipfile',
    '.git',
    '.jj',
    '.py_root_marker',
  },
  settings = {
    basedpyright = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = 'openFilesOnly',
        --basedpyright.analysis.typeCheckingMode ["off", "basic", "standard", "strict", "recommended", "all"]: Determines the default type-checking level used by pyright.
        typeCheckingMode = 'standard', -- I think this enforces stricter type checking
      },
    },
  },
})
