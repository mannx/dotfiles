-- start the LSP server for the selected languages
require'lspconfig'.gopls.setup{
	on_attach = function()
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
	end,

}

-- require("rust-tools").setup({
local rt = require("rust-tools")

rt.setup({
	server = {
		on_attach = function(_, buf)
			-- hover
			vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = buf })
		end,
	},
})

rt.inlay_hints.set()
