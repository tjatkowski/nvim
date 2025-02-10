return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

        vim.keymap.set('n', '<leader>fwf', function()
            local word = vim.fn.expand("<cword>")
            builtin.find_files({ default_text = word })
        end)
        vim.keymap.set('n', '<leader>fWf', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.find_files({ default_text = word })
        end)
        vim.keymap.set('n', '<leader>fwg', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>fWg', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
    end
}

