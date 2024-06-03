return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>ff", function() require('telescope.builtin'):find_files {} end, desc = "telescope find files"},
        { "<leader>fg", function() require('telescope.builtin'):git_files  {} end, desc = "telescope git files"},
        { "<leader>fs", function() require('telescope.builtin'):live_grep  {} end, desc = "telescope grep search"},
    }
}
