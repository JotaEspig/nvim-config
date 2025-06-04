local vim = vim
local colorscheme_file = vim.fn.stdpath("state") .. "/.colorscheme"

local function OverrideBG()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#11131a" })
end

local function ApplyColors(colorscheme)
    colorscheme = colorscheme or "tokyonight-moon"
    vim.cmd.colorscheme(colorscheme)
    OverrideBG()
end

local function SaveColors(colorscheme)
    vim.fn.writefile({ colorscheme }, colorscheme_file)
    ApplyColors(colorscheme)
end

vim.api.nvim_create_user_command("SetTheme", function(opts)
    SaveColors(opts.args)
end, {
    nargs = "?",
    complete = function()
        return vim.fn.getcompletion("", "color")
    end
})

-- if file exists sets it, otherwise sets default and save it
if vim.fn.filereadable(colorscheme_file) == 1 then
    local colorscheme = vim.fn.readfile(colorscheme_file)[1]
    ApplyColors(colorscheme)
else
    local default_colorscheme = "tokyonight-moon"
    ApplyColors(default_colorscheme)
    vim.fn.writefile({ default_colorscheme }, colorscheme_file)
end
