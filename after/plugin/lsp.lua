local vim = vim
local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.on_attach(function(_, buffnr)
    local opts = { buffer = buffnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>fmt", function() vim.lsp.buf.format() end, opts)
    vim.keymap.set("n", "<leader>q", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rf", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
end)

lsp.setup()

-- Installs language servers
require("mason").setup({})
require("mason-lspconfig").setup({
    -- Replace the language servers listed here
    -- with the ones you want to install
    ensure_installed = { "clangd", "pyright", "gopls", "lua_ls" },
    handlers = {
        lsp.default_setup,
    },
})
