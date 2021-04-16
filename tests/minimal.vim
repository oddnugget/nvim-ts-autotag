set rtp +=.
set rtp +=../plenary.nvim/
set rtp +=../nvim-treesitter
set rtp +=../playground/

runtime! plugin/plenary.vim
runtime! plugin/nvim-treesitter.vim
runtime! plugin/playground.vim
runtime! plugin/nvim-ts-autotag.vim

set noswapfile
set nobackup

filetype indent off
set nowritebackup
set noautoindent
set nocindent
set nosmartindent
set indentexpr=


lua << EOF

local _, ts_utils = pcall(require, 'nvim-treesitter.ts_utils')
_G.T=ts_utils
_G.test_rename = true
_G.test_close = true
require("plenary/busted")
require("nvim-ts-autotag").setup()
EOF

