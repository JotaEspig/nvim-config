function ApplyColors(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)
end

ApplyColors()
