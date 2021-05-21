" Install Vim-Plug if not installed already
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source ~/.config/nvim/init.vim
endif

call plug#begin()
	Plug 'scrooloose/nerdTree' " Open File Explorer (Ctrl + N)
    Plug 'vim-airline/vim-airline' " Statusbar
    Plug 'vim-airline/vim-airline-themes' " Statusbar
    Plug 'jiangmiao/auto-pairs' " Automatically insert pair for quotes, brackets, etc.
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'hzchirs/vim-material'                             " material color themes
    Plug 'neoclide/coc.nvim', {'branch': 'release'}         " LSP and more
    Plug 'tpope/vim-commentary'                             " better commenting
    Plug 'puremourning/vimspector'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'arcticicestudio/nord-vim'
    Plug 'kyazdani42/nvim-web-devicons'
" Plug 'romgrk/lib.kom' -- removed! You can remove it from your vimrc
    Plug 'romgrk/barbar.nvim'
call plug#end()
let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>ll :call vimspector#Launch()
