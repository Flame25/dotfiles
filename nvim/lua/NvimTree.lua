-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_respect_buf_cwd = 1
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
local map = vim.api.nvim_set_keymap

map('n', '<leader>t', ':NvimTreeToggle<CR>',{noremap = true, silent=true})
-- OR setup with some options
require("nvim-tree").setup({
    update_focused_file = {
        enable = true,
        update_cwd = true,
        update_root= true
    },
    sort_by = "case_sensitive",
    view = {
        width = 30,
        },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    actions = { 
        open_file = { 
            resize_window =true
        },

    }
})
