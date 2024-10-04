require('hop').setup()

local hop = require('hop')
local directions = require('hop.hint').HintDirection

-- hop word with a direction looks super cool
-- So does hop pattern, which would be nice undirected? That's kinda stepping on flash but like... worth it
-- Maybe a hop-anywhere like for single line only?

vim.keymap.set('n', '<leader>fl', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
end, {remap=true})
vim.keymap.set('n', '<leader>fh', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false })
end, {remap=true})
