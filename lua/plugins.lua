-- Automatically install lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins;
plugins = {
    {"junegunn/vim-easy-align"}, {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function() require("nvim-surround").setup({}) end
    }, {
        "monaqa/dial.nvim",
        config = function()
            local augend = require("dial.augend")
            require("dial.config").augends:register_group({
                default = {
                    augend.constant.new {
                        elements = {"true", "false"},
                        word = true,
                        cyclic = true
                    },
                    augend.constant
                        .new {
                        elements = {"True", "False"},
                        word = true,
                        cyclic = true
                    }
                }
            })
        end
    }
}

require('lazy').setup(plugins, {})
