return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
    vim.keymap.set('n', '<leader>h', function()require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())end),
    vim.keymap.set('n', '<leader>m', function()require('harpoon'):list():add()end),
    vim.keymap.set('n', '<S-h>', function()require('harpoon'):list():select(1)end),
    vim.keymap.set('n', '<S-j>', function()require('harpoon'):list():select(2)end),
    vim.keymap.set('n', '<S-k>', function()require('harpoon'):list():select(3)end),
    vim.keymap.set('n', '<S-l>', function()require('harpoon'):list():select(4)end),
}
