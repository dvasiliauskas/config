
    set termguicolors
    set mouse=

    set autowrite

    syntax on

    set wildmenu

    set showtabline=2
    set ma

    set exrc "opening vim on a directory, will attempt to source .vimrc files"

    set guicursor=
    set noerrorbells
    set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

    set showcmd
    set showmode

    set number
    set numberwidth=1
    set ruler

    ""  ==========Indents==========
    "" indent_types -> spaces/tabs"

        let indent_type="spaces"

        if (indent_type =~ "spaces")
            set tabstop=4
            set softtabstop=4
            set shiftwidth=4
            set expandtab
            set smartindent
        endif

        if (indent_type =~ "tabs")
            set tabstop=8
            set softtabstop=8
            set shiftwidth=8
            set smartindent
        endif


    set list "show tabs, spaces and line endings
    exec "set listchars=tab:\uBB\uBB,nbsp:~,trail:\uB7"


    set relativenumber

    set nohlsearch
    set hidden
    set nowrap

    set noswapfile
    set nobackup
    set undodir=~/.vim/undodir
    set undofile

    set incsearch
    set scrolloff=24
    set colorcolumn=0

    "Gutter area, can be used for errors
    set signcolumn=yes "specific to vim8

    "Fuzzy searching
    set nocompatible "only in project search"
    set path+=** "keeps the current path and append at the end for recursive sub dir search"

    set splitbelow
    set splitright

    "strips away the redundant space at the bottom
    set cmdheight=1

"===============================================================================
