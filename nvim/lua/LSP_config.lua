require'mason-lspconfig'.setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "sqlls", "tsserver", "pyright", "jdtls", "texlab"},
}
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.sqlls.setup{}
require'lspconfig'.texlab.setup{}
require'lspconfig'.jdtls.setup{}
require'lspconfig'.rust_analyzer.setup{}
--LUA LSP Config--
require'lspconfig'.lua_ls.setup {
  on_init = function(client)
    local path = client.workspace_folders[1].name -- neovim config dir
    -- Debug common problems
    -- vim.print(client.config.settings)
    -- local file = assert(io.open("tmpfile123", "a"));
    -- file:write(vim.inspect(client.config.settings) .. "\n");
    -- file:close()
    -- vim.print(client.workspace_folders[1].name)
    -- vim.print(tostring(not vim.loop.fs_stat(client.workspace_folders[1].name..'/.luarc.jsonc')))
    -- :lua print(client.workspace_folders[1].name .. "\n")
    -- :lua print(tostring(not vim.loop.fs_stat(client.workspace_folders[1].name..'/.luarc.json')) .. "\n")
    -- :lua print(tostring(not vim.loop.fs_stat(client.workspace_folders[1].name..'/.luarc.jsonc')) .. "\n")

    if not vim.loop.fs_stat(path..'/.luarc.json') and not vim.loop.fs_stat(path..'/.luarc.jsonc') then
      -- vim.print("special client setup")
      client.config.settings = vim.tbl_deep_extend('force', client.config.settings.Lua, {
        diagnostics = {
          globals = { 'vim' }, -- works, but undocumented on website
        },
        runtime = {
          version = 'LuaJIT'
          -- path = runtime_path,
        },
        workspace = {
          library = { vim.env.VIMRUNTIME },
          -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
          -- library = vim.api.nvim_get_runtime_file("", true)
          checkThirdParty = false,
        }
      })

      client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
    end
    return true
  end
}
