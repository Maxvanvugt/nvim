local mapkey = require("util.keymapper").mapvimkey
-- Buffer Navigation
mapkey("<leader>bn", "bnext", "n") -- Next buffer
mapkey("<TAB>", "bnext", "n") -- Next buffer
mapkey("<leader>bp", "bprevious", "n") -- Prev buffer
mapkey("<leader>bd", "bdelete", "n") -- Delete buffer
mapkey("<leader>bc", "bufdo bd", "n") -- Delete all buffers
mapkey("<leader>bb", "e #", "n") -- Switch to Other Buffer
mapkey("<leader>`", "e #", "n") -- Switch to Other Buffer

-- Directory Navigatio}n
mapkey("<leader>m", "NvimTreeFocus", "n")
mapkey("<leader>e", "NvimTreeToggle", "n")

-- Pane and Window Navigation
mapkey("<C-h>", "<C-w>h", "n") -- Navigate Left
mapkey("<C-j>", "<C-w>j", "n") -- Navigate Down
mapkey("<C-k>", "<C-w>k", "n") -- Navigate Up
mapkey("<C-l>", "<C-w>l", "n") -- Navigate Right
mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
mapkey("<C-l>", "wincmd l", "t") -- Navigate Right
mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right


-- Window Management
mapkey("<leader>sv", "vsplit", "n") -- Split Vertically
mapkey("<leader>sh", "split", "n") -- Split Horizontally
mapkey("<leader>k", "vsplit", "n") -- Split Vertically
mapkey("<leader>j", "split", "n") -- Split Horizontally
mapkey("<C-Up>", "resize +2", "n")
mapkey("<C-Down>", "resize -2", "n")
mapkey("<C-Left>", "vertical resize +2", "n")
mapkey("<C-Right>", "vertical resize -2", "n")

mapkey("<leader>wq", "wincmd q", "n") -- Quit a window
mapkey("<leader>wo", "wincmd o", "n") -- CLose all other windows
mapkey("<leader>wx", "wincmd x", "n") -- Swap current with next
mapkey("<leader>ww", "update", "n") -- Update current file
mapkey("<leader>ws", "luafile %", "n") -- Source lua file

-- Tab navigation
mapkey("<S-TAB>", "tabnext", "n") -- Source lua file
mapkey("<leader>;", "tabnew %", "n") -- Source lua file
-- Java
-- mapkey("<leader>jr", "update <BAR> JavaRunnerRunMain", "n") -- Run Java Main

-- Format
mapkey ("<leader>nf", ":'<,'>Neoformat", "n") -- Format

-- Git blame
mapkey("<leader>gt", "GitBlameToggle", "n") -- Run Java Main

-- Git sign
mapkey("n", "Gitsigns next_hunk", "n") -- Next hunk

-- Diffview
mapkey("<leader>do", "DiffviewOpen", "n") -- Open diffview 
mapkey("<leader>dc", "DiffviewClose", "n") -- Close diffview 


-- Show Full File-Path
mapkey("<leader>pa", "ShowPath", "n") -- Show Full File Path

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Notes
mapkey("<leader>ng", "Neorg workspace general", "n")
mapkey("<leader>nw", "Neorg workspace work", "n")
mapkey("<leader>ny", "Neorg workspace youtube", "n")

-- Indenting
vim.keymap.set("v", "<", "<gv", { silent = true, noremap = true })
vim.keymap.set("v", ">", ">gv", { silent = true, noremap = true })

local api = vim.api

-- Zen Mode
api.nvim_set_keymap("n", "<leader>zn", ":TZNarrow<CR>", {})
api.nvim_set_keymap("v", "<leader>zn", ":'<,'>TZNarrow<CR>", {})
api.nvim_set_keymap("n", "<leader>zm", ":TZMinimalist<CR>", {})
api.nvim_set_keymap("n", "<leader>za", ":TZAtaraxis<CR>", {})

-- DiffView
api.nvim_set_keymap("v", "<leader>df", ":DiffviewFileHistory<CR>", {})

-- Comments
api.nvim_set_keymap("n", "<C-_>", "gtc", { noremap = false })
api.nvim_set_keymap("v", "<C-_>", "goc", { noremap = false })
-- api.nvim_set_keymap("i", "<TAB>", vim.fn.pumvisible(), { noremap = false, expr = true })
-- vim.keymap.set("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()')
-- vim.keymap.set('i', '<Tab>', vim.fn.pumvisible() ? "\<C-n>" : "<\Tab>", { expr = true })
-- vim.keymap.set('i', '<Tab>', function()
--   return vim.fn.pumvisible() == 1 and "<C-n>" or "<Tab>"
-- end, { expr = true })
