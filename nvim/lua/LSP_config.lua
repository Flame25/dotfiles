require'mason-lspconfig'.setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "sqlls", "tsserver", "pyright", "jdtls", "texlab"},
}
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.sqlls.setup{}
require'lspconfig'.texlab.setup{}
