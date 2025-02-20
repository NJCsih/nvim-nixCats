-- Oh my god this moves left and right by indenting more or less... that's incredible

require('mini.move').setup({
  mappings = {
    -- Move visual selection in Visual mode.
    left  = '<S-Left>',
    down  = '<S-Down>',
    up    = '<S-Up>',
    right = '<S-Right>',

    -- Move current line in Normal mode
    line_left  = '<S-Left>',
    line_down  = '<S-Down>',
    line_up    = '<S-Up>',
    line_right = '<S-Right>',
  },

  -- Options which control moving behavior
  options = {
    -- Automatically reindent selection during linewise vertical move
    reindent_linewise = true,
  },
})
