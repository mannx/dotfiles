-- local nnoremap = require("keymap").nnoremap

-- -- Functional wrapper for mapping custom keybindings
-- function map(mode, lhs, rhs, opts)
--     local options = { noremap = true }
--     if opts then
--         options = vim.tbl_extend("force", options, opts)
--     end
--     vim.api.nvim_set_keymap(mode, lhs, rhs, options)
-- end

-- move between windows
vim.keymap.set("n","<C-h>","<C-w>h")
vim.keymap.set("n","<C-j>","<C-w>j")
vim.keymap.set("n","<C-k>","<C-w>k")
vim.keymap.set("n","<C-l>","<C-w>l")

-- harpoon key binds
-- vim.keymap.set("n", "<leader>a", function() require("harpoon.mark").add_file() end, silent)
-- vim.keymap.set("n", "<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, silent)

-- vim.keymap.set("n", "<F1>", function() require("harpoon.ui").nav_file(1) end, silent)
-- vim.keymap.set("n", "<F2>", function() require("harpoon.ui").nav_file(2) end, silent)
-- vim.keymap.set("n", "<C-n>", function() require("harpoon.ui").nav_file(3) end, silent)
-- vim.keymap.set("n", "<C-s>", function() require("harpoon.ui").nav_file(4) end, silent)

-- telescope key binds
-- vim.keymap.set("n", "<leader>ff", function() require("telescope.builtin").find_files() end, silent)

-- center on page up/down
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- keep cursor centered while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- move selected lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- paste over selected text without losing buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy to the system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
