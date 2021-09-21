local M = {}

M.colorizer = function()
	local present, colorizer = pcall(require, 'colorizer')
	if present then
		colorizer.setup()
		vim.cmd('ColorizerReloadAllBuffers')
	end
end

M.comment = function()
	local present, nvim_comment = pcall(require, 'nvim_comment')
	if present then
		nvim_comment.setup()
	end
end

return M
