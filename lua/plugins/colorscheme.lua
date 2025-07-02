return {
    {
        "EdenEast/nightfox.nvim",
        transparent = false,
    },
    { "ellisonleao/gruvbox.nvim" },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = {
            -- flavour = "frappe",
            transparent_background = true,
        },
    },
    {
        "folke/tokyonight.nvim",
    },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            -- colorscheme = "gruvbox",
            -- colorscheme = "carbonfox",
            colorscheme = "catppuccin-mocha",
            -- colorscheme = "tokyonight-moon",
        },
    },
}
