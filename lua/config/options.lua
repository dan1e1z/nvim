-- Tab / Indentation

-- set the number of spaces in a tab
vim.opt.tabstop = 4

-- sets the number of spaces for each level of Indentation
vim.opt.shiftwidth = 4

-- set the number of spaces of a tab while in insert mode
vim.opt.softtabstop = 4

-- converts tabs into spaces from \t -> '   '
vim.opt.expandtab = true

-- auto Indentation
vim.opt.smartindent = true

-- prevents long lines from wrapping onto code on next lines
vim.opt.wrap = false

-- Search

-- highlights all macthes of searched word
vim.opt.incsearch = true

-- ignore case, case insensitive, while searching
vim.opt.ignorecase = true

-- use capital letters while searching
vim.opt.smartcase = true

-- highlight search
vim.opt.hlsearch = false

-- Appearance

-- adds numbers to the right hand side
vim.opt.number = true

-- adds relative numbers onto the right hand side
vim.opt.relativenumber = true

-- allows running debugger to keep gutter: keeps available space for characters
vim.opt.signcolumn = "yes"

-- allows for automatic scrolling, preventing hitting the bottom
vim.opt.scrolloff = 10
vim.opt.cmdheight = 1

-- Behaviour

-- allows for change of buffers without saving
vim.opt.hidden = true

-- removes error noise
vim.opt.errorbells = false

-- removes swapfiles swp
vim.opt.swapfile = false

-- no backup files
vim.opt.backup = false

-- allows color with terminal
vim.opt.termguicolors = true

-- allows for undo files, stored
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.undofile = true

-- allows backspace to work as: indent, end of line, start
vim.opt.backspace = "indent,eol,start"

-- defualt splitting windows to be on the right - vertical
vim.opt.splitright = true

-- default splitting windows to be on the bottom - horizontal
vim.opt.splitbelow = true

-- auto change the current directory
vim.opt.autochdir = false

-- always allows mouse, regardless of mode
vim.opt.mouse:append("a")

-- allows copy to outside to inside vim
-- vim.opt.clipboard:append("unnamedplus")
vim.opt.clipboard = "unnamedplus"

-- allows edit of buffer
vim.opt.modifiable = true

-- sets current buffer to UTF-8
vim.opt.encoding = "UTF-8"

-- vim.opt_local.conceallevel = 2
