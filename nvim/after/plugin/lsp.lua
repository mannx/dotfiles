-- local lsp = require('lsp-zero')

-- lsp.preset('recommended')
-- lsp.setup()

-- lsp.ensure_installed({
-- 	'rust_analyzer',
-- })

-- local cmp = require('cmp')
-- local cmp_select = {behaviour = cmp.SelectBehavior.Select}
-- local cmp_mappings = lsp.defaults.cmp_mappings({
-- 	['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
-- 	['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
-- 	-- ['<C-Space>'] = cmp.mapping.confirm({ select = true }),
-- 	['<C-Space>'] = cmp.mapping.complete(),
--     ['<C-e>'] = cmp.mapping.abort(),
-- })

-- lsp.set_preferences({
-- 	sign_icons = { }
-- })

-- lsp.setup_nvim_cmp({
-- 	mapping = cmp_mappings,
--     completion = {autocomplete = false},
-- })

-- lsp.on_attach(function(client, bufnr)
-- 	local opts = {buffer = bufnr, remap = false}

-- 	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
-- 	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

-- end)

-- lsp.setup()

-- vim.diagnostic.config({
-- 	virtual_text = true,
-- })
