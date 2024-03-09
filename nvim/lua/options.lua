local o = vim.o
local bo = vim.bo
local cmd = vim.cmd
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
local set = vim.opt
--vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
o.number = true
--GuiFont! FiraCode Nerd Mono:h11:cANSI:qDRAFT--
map('n', '<leader>ff', ':Telescope find_files<CR>',opts)
map('n', '<leader>fq', ':Telescope live_grep<CR>',opts)
local TAB_WIDTH = 4
set.tabstop = TAB_WIDTH
set.shiftwidth = TAB_WIDTH
set.expandtab = true
