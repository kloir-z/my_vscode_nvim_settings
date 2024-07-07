local M = {}

function M.select_indent_block()
    vim.api.nvim_command('normal! ^')
    vim.api.nvim_command('normal! h')
    local visual_mode_at_start = true

    local mode = vim.api.nvim_get_mode().mode
    if mode ~= 'v' and mode ~= 'V' then
        vim.api.nvim_command('normal! v')
        visual_mode_at_start = false
    end

    local start_line = vim.fn.line('.')

    while true do
        local current_char = vim.api.nvim_get_current_line():sub(vim.fn.col('.'), vim.fn.col('.'))
        local current_line = vim.api.nvim_get_current_line()
        if current_char:match('%s') or current_line:match('^%s*$') then
            if vim.fn.line('.') == 1 then break end
            vim.api.nvim_command('normal! k')
        else
            if vim.fn.line('.') ~= start_line then
                vim.api.nvim_command('normal! j')
            end
            break
        end
    end

    if visual_mode_at_start == false then vim.api.nvim_command('normal! o') end

    local start_line = vim.fn.line('.')

    while true do
        local current_char = vim.api.nvim_get_current_line():sub(vim.fn.col('.'), vim.fn.col('.'))
        local current_line = vim.api.nvim_get_current_line()
        if current_char:match('%s') or current_line:match('^%s*$') then
            if vim.fn.line('.') == vim.fn.line('$') then break end
            vim.api.nvim_command('normal! j')
        else
            if vim.fn.line('.') ~= start_line then
                vim.api.nvim_command('normal! k')
            end
            break
        end
    end

    vim.api.nvim_command('normal! $o0o')
    print("test!!!!")

end

return M
