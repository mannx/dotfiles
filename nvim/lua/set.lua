
-- show relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- enable mouse for all modes
vim.opt.mouse = 'a'

-- ignore case on search unless used
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- disable highlight of previous search
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.breakindent = true

-- set tab stops
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.splitright = true

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- keep max 8 lines before top/bttom
vim.opt.scrolloff = 8
-- set folding to indent

-- disable continuing comments when new line
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- make sure rustfmt runs on save when working with rust files
vim.g.rustfmt_autosave = 1

require("nvim-tree").setup({
	open_on_setup = true,
	open_on_tab = true,
	open_on_setup_file = true,
	view = {
		side = "left",
		width = 30,
	}
})
