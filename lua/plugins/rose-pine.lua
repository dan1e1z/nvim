-- color scheme plugin
return {
	-- get color scheme from rosepine repository
	'rose-pine/neovim',

	-- color scheme does not want lazy loadind: always be loaded
	lazy = false,

	-- priority is 50 by default, high ensures it's loaded first
	priority = 1000,

	-- function is loaded, each time it is loaded
	config = function()
		-- same as vim.cmd('colorscheme rose-pine')
		vim.cmd.colorscheme 'rose-pine'
	end
}
