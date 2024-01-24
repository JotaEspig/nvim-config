local vim = vim

function ApplyTransparentBG()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
end

function ApplyColors(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	ApplyTransparentBG()
end

ApplyColors()
