require("option")
require("plugins")
require("customscript")
local set = vim.opt

vim.keymap.set('i', '<C-j>', "<Down>", {noremap = true})
vim.keymap.set('i', '<C-k>', "<Up>", {noremap = true})
vim.keymap.set('i', '<C-h>', "<Left>", {noremap = true})
vim.keymap.set('i', '<C-l>', "<Right>", {noremap = true})
vim.keymap.set('n', 'x', '"_x', {noremap = true})
vim.keymap.set('n', 's', '"_s', {noremap = true})
vim.keymap.set('x', 'p', '"_dP', {noremap = true})

vim.keymap.set('n', 'ga', '<Plug>(EasyAlign)', {silent = true})
vim.keymap.set('x', 'ga', '<Plug>(EasyAlign)', {silent = true})

vim.keymap.set("n", "<C-a>", function()
    require("dial.map").manipulate("increment", "normal")
end, {desc = "Increment"})
vim.keymap.set("n", "<C-x>", function()
    require("dial.map").manipulate("decrement", "normal")
end, {desc = "Decrement"})
vim.keymap.set("v", "<C-a>", function()
    require("dial.map").manipulate("increment", "visual")
end, {desc = "Visual Increment"})
vim.keymap.set("v", "<C-x>", function()
    require("dial.map").manipulate("decrement", "visual")
end, {desc = "Visual Decrement"})

vim.keymap.set('n', '<C-y>', '<cmd>normal! <C-y><C-y><CR>', { noremap = true })
vim.keymap.set('n', '<C-e>', '<cmd>normal! <C-e><C-e><CR>', { noremap = true })

vim.api.nvim_set_keymap('n', 'gs', '<cmd>lua require("customscript").select_indent_block()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'gs', '<cmd>lua require("customscript").select_indent_block()<CR>', {noremap = true, silent = true})

vim.g.EasyMotion_do_mapping = 0
vim.api.nvim_set_keymap('n', 'ss', '<Plug>(easymotion-overwin-w)', {})
vim.api.nvim_set_keymap('n', 'se', '<Plug>(easymotion-e)', {})
vim.api.nvim_set_keymap('n', 'sd', '<Plug>(easymotion-overwin-f)', {})
vim.api.nvim_set_keymap('n', 'sw', '<Plug>(easymotion-s2)', {})

vim.api.nvim_exec([[ autocmd InsertLeave * :silent !zenhan 0 ]], false)