local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local workspace_dir = '/home/gadzz/Documents/Java/Workspace/' .. project_name
local config = {
    cmd = {'/home/gadzz/.config/nvim/ftplugin/launch-jdtls.sh', workspace_dir},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
