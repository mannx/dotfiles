local nnoremap = require("keymap").nnoremap

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- move between windows
map("n","<C-h>","<C-w>h")
map("n","<C-j>","<C-w>j")
map("n","<C-k>","<C-w>k")
map("n","<C-l>","<C-w>l")

-- harpoon key binds
local silent = {silent = true}
nnoremap("<leader>a", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, silent)

nnoremap("<F1>", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<F2>", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<C-n>", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<C-s>", function() require("harpoon.ui").nav_file(4) end, silent)

-- telescope key binds
nnoremap("<leader>ff", function() require("telescope.builtin").find_files() end, silent)
