local copilot_chat = require("CopilotChat")
copilot_chat.setup({
  debug = false,
  show_help = "yes",
  prompts = {
    Explain = "Explain how it works.",
    Review = "Review the following code and provide concise suggestions.",
    Tests = "Briefly explain how the selected code works, then generate unit tests.",
    Refactor = "Refactor the code to improve clarity and readability.",
  },
  build = function()
    vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
  end,
  event = "VeryLazy",
})

-- Setup keymap
vim.api.nvim_set_keymap('n', '<leader>ccb', '<cmd>CopilotChatBuffer<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cce', '<cmd>CopilotChatExplain<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cct', '<cmd>CopilotChatTests<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>ccv', ':CopilotChatVisual<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>ccx', ':CopilotChatInPlace<CR>', { noremap = true, silent = true })
