return {
	"kylechui/nvim-surround",
	version = "*", -- Use for stability; omit to use `main` branch for the latest features
	event = "VeryLazy",
	lazy = false,
	config = function()
		require("nvim-surround").setup({
			-- Configuration here, or leave empty to use defaults
			keymaps = {
				insert = "<C-g>o",
				insert_line = "<C-g>O",
				normal = "yo",
				normal_cur = "yoo",
				normal_line = "yO",
				normal_cur_line = "yOO",
				visual = "O",
				visual_line = "gO",
				delete = "do",
				change = "co",
				change_line = "cO",
			},
		})
	end,
}

--     Old text                    Command         New text
-- --------------------------------------------------------------------------------
--     surr*ound_words             ysiw)           (surround_words)
--     *make strings               ys$"            "make strings"
--     [delete ar*ound me!]        ds]             delete around me!
--     remove <b>HTML t*ags</b>    dst             remove HTML tags
--     'change quot*es'            cs'"            "change quotes"
--     <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
--     delete(functi*on calls)     dsf             function calls
