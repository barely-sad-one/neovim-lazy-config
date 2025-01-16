return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        'nvim-treesitter/playground',
    },
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            playground = {
                enable = true,
            },
            ensure_installed = {
                "lua", "python", "javascript", "typescript", "html", "css", -- Add more languages as needed
            },
            highlight = {
                enable = true, -- Enable Treesitter-based highlighting
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true, -- Enable Treesitter-based indentation
            },
        })
    end,
}
