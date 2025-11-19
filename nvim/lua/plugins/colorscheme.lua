return {
	"folke/tokyonight.nvim",
	lazy = false,
	opts = { style = "moon" },
    config = function()
        vim.cmd.colorscheme("tokyonight")
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = false, undercurl = false })
        vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", {})

        -- Set the color for line numbers
        vim.cmd [[
                    highlight LineNr guifg=#FFFF00
                    highlight LineNrAbove guifg=#000000
                    highlight LineNrBelow guifg=#000000
                ]]

    end,
}
