local opt = vim.opt

-- Tab / Indentation

-- set the number of spaces in a tab
opt.tabstop = 4

-- sets the number of spaces for each level of Indentation
opt.shiftwidth = 4

-- set the number of spaces of a tab while in insert mode
opt.softtabstop = 4

-- converts tabs into spaces from \t -> '   '
opt.expandtab = true

-- auto Indentation
opt.smartindent = true

-- prevents long lines from wrapping onto code on next lines
opt.wrap = false

-- Search

-- highlights all macthes of searched word
opt.incsearch = true

-- ignore case, case insensitive, while searching
opt.ignorecase = true

-- use capital letters while searching
opt.smartcase = true

-- highlight search
opt.hlsearch = false

-- Appearance

-- adds numbers to the right hand side
opt.number = true

-- adds relative numbers onto the right hand side
opt.relativenumber = true

-- allows full color support on the terminal
-- opt.termguicolors = true

-- gives indication of number of characters in a line
-- opt.colorcolumn = "100"

-- allows running debugger to keep gutter: keeps available space for characters
opt.signcolumn = "yes"

-- allows for automatic scrolling, preventing hitting the bottom
opt.scrolloff = 10
opt.cmdheight = 1

-- adds to selection for auto-copletetion
-- opt.completeopt = "menuone,noinsert,noselect"

-- Behaviour

-- allows for change of buffers without saving
opt.hidden = true

-- removes error noise
opt.errorbells = false

-- removes swapfiles swp
opt.swapfile = false

-- no backup files
opt.backup = false

-- allows for undo files, stored
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true

-- allows backspace to work as: indent, end of line, start
opt.backspace = "indent,eol,start"

-- defualt splitting windows to be on the right - vertical
opt.splitright = true

-- default splitting windows to be on the bottom - horizontal
opt.splitbelow = true

-- auto change the current directory
opt.autochdir = false

-- treats words seperated by a hyphen, a single word
-- opt.iskeyword:append("-")

-- always allows mouse, regardless of mode
opt.mouse:append("a")

-- allows copy to outside to inside vim
opt.clipboard:append("unnamedplus")

-- allows edit of buffer
opt.modifiable = true

-- gives visual of cusor
-- opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- sets current buffer to UTF-8
opt.encoding = "UTF-8"
