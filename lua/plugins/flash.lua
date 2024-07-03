return {
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = { modes = { char = { enabled = false } } },
	keys = { {
		"<S-s>",
		mode = { "n", "x", "o" },
		function()
			require("flash").jump()
		end,
	} },
}
