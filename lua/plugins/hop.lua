require('hop').setup()

local hop = require('hop')
local directions = require('hop.hint').HintDirection

-- See: https://github.com/fj0r/nvim-lua/blob/51bdf1c7736ba901842a47174b81d1059a3503f1/lua/settings/hop.lua#L1-L17
-- I am not the lua wizzard I wish I was

local regex = vim.regex('\\v[a-zA-Z0-9]+|[,=#]+|[:;\\[\\]\\<\\><>{}()]\\s*$|\\s+$')

local override_opts = function(opts)
    return setmetatable(opts or {}, {
        __index = hop.opts,
    })
end

local hint_somewhere = function(opts)
    hop.hint_with_regex({
      oneshot = false,
      match = function(s) return regex:match_str(s) end,
    }, override_opts(opts))
end


vim.keymap.set({'n','v'}, '<leader>fh', function()
  hint_somewhere({ direction = directions.BEFORE_CURSOR, current_line_only = true });
end, {remap=true})

vim.keymap.set({'n','v'}, '<leader>fl', function()
  hint_somewhere({ direction = directions.AFTER_CURSOR, current_line_only = true });
end, {remap=true})
