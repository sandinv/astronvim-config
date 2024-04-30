vim.g.vimwiki_global_ext = 0
vim.g.vimwiki_list = {
  {
    path = '~/vimwiki/',
    syntax = 'markdown',
    ext = '.md'
  }
}
vim.api.nvim_create_autocmd('FileType', {
	pattern = 'VimwikiTOC',
	group = vim.api.nvim_create_augroup('tex_only_keymap', { clear = true }),
	callback = function ()
		vim.keymap.set('n', '<leader>wo', ':VimwikiTOC<CR>', { silent = true, buffer = true })
	end,
})
