local global = vim.g
local o = vim.o

-- Syntax
-- o.syntax = true
-- o.encoding = "utf-8"
o.cursorline = true
o.autoindent = true
o.ruler = true
o.title = true
-- o.termguicolors = true

-- Global
global.mapleader = " "
global.maplocalleader = " "

-- Tabs
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.smartindent = true

-- Clipboard
o.clipboard = 'unnamedplus'
o.fixeol = false

-- Folding
o.foldmethod = 'syntax'

-- Search
o.ignorecase = true
o.smartcase = true
o.joinspaces = false
o.showmatch = true

-- Window
o.splitbelow = true
o.splitright = true

-- Wild Menu
o.wildmenu = true
o.wildmode = "longest:full,full"

-- Number
o.number = true
o.relativenumber = true
