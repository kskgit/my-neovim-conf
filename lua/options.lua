local options = {
	encoding = "utf-8",
	fileencoding = "utf-8",
	shiftwidth = 2,
	tabstop = 2,
	clipboard = "unnamedplus",
	title = true,
	number = true,
}

vim.opt.swapfile = false

for k, v in pairs(options) do
	vim.opt[k] = v
end
