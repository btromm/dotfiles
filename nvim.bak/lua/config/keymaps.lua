vim.g.mapleader = " "

local keymap = vim.keymap

-- move highlighted stuff up and down with Shift+J/K
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted up" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move higlighted down" })

keymap.set("n", "J", "mzJ`z") -- keeps stuff in place when you go up

keymap.set("n", "<C-[>", "<C-u>zz", { desc = "Half page jump up" })
keymap.set("n", "<C-]>", "<C-d>zz", { desc = "Half page jump down" })
-- search terms stay in middle
keymap.set("n", "n", "nzzzv", { desc = "Search terms stay in middle" })
keymap.set("n", "N", "Nzzzv", { desc = "Search terms in middle" })

-- i got twooooo registers
keymap.set("n", "<leader>y", "\"+y", { desc = "Yank to system register" })
keymap.set("v", "<leader>y", "\"+y", { desc = "Yank to system register" })
keymap.set("n", "<leader>p", "\"+p", { desc = "Paste from system register" }) -- paste from system register

keymap.set("i", "<C-c>", "<Esc>")                                             -- make them the same


-- replace current word
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace current word" })
-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make file executable" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })     -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })   -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })      -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- telescope
--keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
--keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
--keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
--keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })


-- lazy
keymap.set('n', '<leader>ll', ':Lazy<CR>', { desc = "Open Lazy" })


-- copilot
keymap.set('n', '<leader>aa', ':Copilot start<CR>', { desc = "Copilot start" })
