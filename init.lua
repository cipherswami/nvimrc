-- =======================================
-- @file : init.lua
-- =======================================

-- ========================= Settings ==========================================

local opt = vim.opt

-- == General ==
vim.cmd("syntax enable")
opt.clipboard = "unnamedplus"

-- == Search ==
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.grepprg = "grep -RIn $*"

-- == UI ==
opt.termguicolors = true
opt.number = true
opt.mouse = "a"
opt.wrap = false
opt.splitright = true
opt.splitbelow = true
opt.scrolloff = 5
opt.sidescroll = 20
opt.laststatus = 3

-- == Completion ==
opt.wildmenu = true
opt.completeopt = { "menu", "menuone", "noselect" }

-- == Messages ==
opt.shortmess:append({ c = true, F = true, I = true })

-- == Editing ==
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.autoindent = true
opt.smartindent = true
opt.backspace = { "indent", "eol", "start" }

-- == File ==
opt.autoread = true
opt.swapfile = false
opt.undofile = true

-- == Performance ==
opt.ttimeout = true
opt.timeoutlen = 500
opt.updatetime = 250

-- =============================== Keybinds =====================================

local map = vim.keymap.set

vim.g.mapleader = " "

-- == General ==
map("n", "<C-s>", "<cmd>w<cr>", { silent = true })
map("n", "<Esc><Esc>", "<cmd>noh<cr><Esc>", { silent = true })
map("n", "<leader>e", "<cmd>Ex<cr>", { silent = true })

-- == Windows ==
map("n", "<leader>wv", "<cmd>vs<cr>", { silent = true })
map("n", "<leader>ws", "<cmd>sp<cr>", { silent = true })
map("n", "<leader>wq", "<C-w>q", { silent = true })
map("n", "<leader>qq", "<cmd>qa!<cr>", { silent = true })

-- == Buffers ==
map("n", "<S-h>", "<cmd>bp<cr>", { silent = true })
map("n", "<S-l>", "<cmd>bn<cr>", { silent = true })
map("n", "<leader>bd", "<cmd>bd<cr>", { silent = true })
map("n", "<leader>,", "<cmd>buffers<cr>", { silent = true })

-- == Search ==
map("n", '<leader>s"', "<cmd>reg<cr>", { silent = true })
map("n", "<leader>sj", "<cmd>jumps<cr>", { silent = true })

-- =============================== Misc =====================================

-- Bootstrap LazyVim
-- require("lazynvim")
