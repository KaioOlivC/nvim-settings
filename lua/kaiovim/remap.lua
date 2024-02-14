vim.keymap.set("n", "<leader>b", vim.cmd.Ex)
-- Basic navigation
    -- Arrows
vim.keymap.set({"n", "v"}, "n", "h")
vim.keymap.set({"n", "v"}, "e", "j")
vim.keymap.set({"n", "v"}, "i", "k")
vim.keymap.set({"n", "v"}, "o", "l")
    -- Splits
vim.keymap.set({"n", "v"}, "N", "<C-w>h")
vim.keymap.set({"n", "v"}, "E", "<C-w>j")
vim.keymap.set({"n", "v"}, "I", "<C-w>k")
vim.keymap.set({"n", "v"}, "O", "<C-w>l")

-- Splits
    -- Resize splits
vim.keymap.set("n", "<C-n>", ":vertical resize -5<CR>") -- Make it narrower
vim.keymap.set("n", "<C-e>", ":resize +5<CR>") -- Make it taller
vim.keymap.set("n", "<C-i>", ":resize -5<CR>") -- Make it shorter
vim.keymap.set("n", "<C-o>", ":vertical resize +5<CR>") -- Make it wider
vim.keymap.set("n", "<C-s>e", "<C-w>=", {remap= true})

    -- Create splits
vim.keymap.set("n", "<C-s>v", ":vsplit<CR>", {remap= true})
vim.keymap.set("n", "<C-s>h", ":split<CR>", {remap= true})

-- Commands

-- Text search
    -- Search finds stay in the vertical middle
vim.keymap.set("n", "k", "nzzzv")
vim.keymap.set("n", "K", "Kzzzv")

-- Text insertion
vim.keymap.set({"n", "v"}, "t", "i") --At the cursor
vim.keymap.set({"n", "v"}, "T", "I") --At the start of the line
vim.keymap.set({"n", "v"}, "h", "o") --Add a line below
vim.keymap.set({"n", "v"}, "H", "O") --Add a line at the current position
vim.keymap.set("i", "<C-t>", "<C-d>") --Indent current line forward
vim.keymap.set("i", "<C-d>", "<C-t>") --Indent current line backward

-- Text selection
vim.keymap.set({"n", "v"}, "f", "e") --Select a word till the end
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y") -- Copies into the system clipboard
vim.keymap.set({"n", "v"}, "<leader>Y", "\"+Y") -- Copies into the system clipboard

-- Text manipulation
    -- Move highlighted lines around
vim.keymap.set("v", "<C-e>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-i>", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-S-e>", "mzJ`z") -- Line merger that does not move the cursor
vim.keymap.set("x", "p", "\"_dp") -- Paste after does not overwrite clipboard
vim.keymap.set("x", "P", "\"_dP") -- Paste here does not overwrite clipboard
    -- Replace all instances of the current word under the cursor
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Linux scripts
    -- Makes current bash script in buffer executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- TMUX
-- vim.keymap.set("n", "<C-t>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
