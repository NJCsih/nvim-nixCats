-- Oh my god this moves left and right by indenting more or less... that's incredible

require('mini.move').setup({
  mappings = {
    -- Move visual selection in Visual mode.
    left  = 'H',
    down  = 'J',
    up    = 'K',
    right = 'L',

    -- Move current line in Normal mode
    line_left  = 'H',
    line_down  = 'J',
    line_up    = 'K',
    line_right = 'L',
  },

  -- Options which control moving behavior
  options = {
    -- Automatically reindent selection during linewise vertical move
    reindent_linewise = true,
  },
})
