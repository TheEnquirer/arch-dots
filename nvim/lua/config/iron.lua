local iron = require("iron.core")

iron.setup {
  config = {
    -- Whether a repl should be discarded or not
    scratch_repl = true,
    -- Your repl definitions come here
    repl_definition = {
      sh = {
        -- Can be a table or a function that
        -- returns a table (see below)
        command = {"zsh"}
      },
      python = {
          command = {"ipython", "--no-autoindent"}
      }
    },
    -- How the repl window will be displayed
    -- See below for more information
    repl_open_cmd = require('iron.view').split.vertical.botright("30%")

  },
  -- Iron doesn't set keymaps by default anymore.
  -- You can set them here or manually add keymaps to the functions in iron.core
  keymaps = {
    send_motion = "<Leader>sc",
    visual_send = "<Leader>sc",
    send_file = "<Leader>sf",
    send_line = "<Leader>sl",
    send_mark = "<Leader>sm",
    mark_motion = "<Leader>mc",
    mark_visual = "<Leader>mc",
    remove_mark = "<Leader>md",
    cr = "<Leader>s<cr>",
    interrupt = "<Leader>e<Leader>",
    exit = "<Leader>sq",
    clear = "<Leader>cll",
  },
  -- If the highlight is on, you can change how it looks
  -- For the available options, check nvim_set_hl
  highlight = {
    italic = false
  },
  ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
}

-- iron also has a list of commands, see :h iron-commands for all available commands
vim.keymap.set('n', '<Leader>rs', '<cmd>IronRepl<cr>')
--vim.keymap.set('n', '<space>rr', '<cmd>IronRestart<cr>')
-- get the current filetype
function IronFocusToggle()
  if vim.bo.filetype ~= '' then
    vim.cmd('IronFocus')
    vim.cmd('startinsert')
  else
    vim.cmd('wincmd p')
  end
end
vim.keymap.set('n', '<Leader>ri', '<cmd>lua IronFocusToggle()<CR>')
--vim.keymap.set('n', '<space>rh', '<cmd>IronHide<cr>')
