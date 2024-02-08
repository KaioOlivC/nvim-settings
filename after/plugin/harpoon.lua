local harpoon = require("harpoon")
local extensions = require("harpoon.extensions");

-- REQUIRED
harpoon:setup()
harpoon:extend(extensions.builtins.navigate_with_number())
-- REQUIRED

vim.keymap.set("n", "<leader>l", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>u", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-l>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-u>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-y>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-;>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-,>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-.>", function() harpoon:list():next() end)
