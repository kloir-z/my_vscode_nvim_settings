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
vim.keymap.set("x", "<C-a>", function()
    require("dial.map").manipulate("increment", "visual")
end, {desc = "Visual Increment"})
vim.keymap.set("x", "<C-x>", function()
    require("dial.map").manipulate("decrement", "visual")
end, {desc = "Visual Decrement"})

vim.api.nvim_set_keymap('n', 'gs', '<cmd>lua require("customscript").select_indent_block()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'gs', '<cmd>lua require("customscript").select_indent_block()<CR>', {noremap = true, silent = true})

vim.keymap.set('n', 'ss', '<cmd>HopWordMW<CR>', { noremap = true })
vim.keymap.set('x', 'ss', '<cmd>HopWordMW<CR>', { noremap = true })
vim.keymap.set('n', 'sd', '<cmd>HopWordCurrentLine<CR>', { noremap = true })
vim.keymap.set('x', 'sd', '<cmd>HopWordCurrentLine<CR>', { noremap = true })
vim.keymap.set('n', 'sx', '<cmd>HopVertical<CR>', { noremap = true })
vim.keymap.set('x', 'sx', '<cmd>HopVertical<CR>', { noremap = true })

vim.api.nvim_exec([[ autocmd InsertLeave * :silent !zenhan 0 ]], false)

vim.api.nvim_set_keymap('n', 'w', '<Plug>CamelCaseMotion_w', {})
vim.api.nvim_set_keymap('n', 'e', '<Plug>CamelCaseMotion_e', {})
vim.api.nvim_set_keymap('n', 'b', '<Plug>CamelCaseMotion_b', {})