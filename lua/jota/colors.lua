local vim = vim

function OverrideBG()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#11131a" })
end

function ApplyColors(color)
    color = color or "tokyonight"
    vim.cmd.colorscheme(color)

    OverrideBG()
end

ApplyColors()
