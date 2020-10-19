" NeoVim Config, Peter Edmonds, 2020
" -------- Load Depedencies --------
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/functions.vim
source ~/.config/nvim/mappings.vim

" -------- Editor Options --------
silent !mkdir ~/.nvimhist > /dev/null 2>&1  "Create directory for history if needed
set undodir=~/.nvimhist                     "History files saved in this directory
set undofile                                "Enable persistent history
set termguicolors                           "Enable 24-bit colorschemes
set clipboard=unnamedplus                   "Use global clipboard for yank & paste
set completeopt=menu,menuone                "Improve pop up menu for completion
set tabstop=4                               "Tabs are displayed as four columns
set shiftwidth=4                            "<< and >> commands indent 4 columns
set expandtab                               "Hitting tab produces equivalent spaces
set autoindent                              "When starting a new line, start at previous indent level
set ignorecase                              "Non case sensitive search
set smartcase                               "Case sensitive search if pattern explicity includes uppercase
set hlsearch                                "Highlight all matches when searching
set number                                  "Display line number for current line
set relativenumber                          "Display distance to other lines
set nowrap                                  "Dont wrap long lines
set hidden                                  "You dont have to write to disk before hiding a buffer
set cmdheight=2                             "Allows for longer output on the command line
set updatetime=250                          "250ms between buffer updates. Many plugins depend on this
set signcolumn=number                       "Display signs in the number column, useful for CoC

" -------- Theme Options --------
let g:material_style = 'oceanic'            "Use ocean option for material theme
let g:airline_theme='material'              "Use material statusbar theme
let g:airline_powerline_fonts = 1           "Enable statusbar icons
colorscheme vim-material                    "Use material editor theme
lua require'nvim-treesitter.configs'.setup { ensure_installed = "all",highlight = { enable = false } }
