return {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("tokyonight-storm")
        vim.api.nvim_set_hl(0, "Normal",   { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    end,
    opts = function()
        return { transparent = true }
    end
}
