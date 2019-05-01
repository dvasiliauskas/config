
"==========================BUILT-IN REMAPS======================================
"":help key-notation -> Describes key mappings with examples

    let mapleader = " "
    nnoremap <leader>q :q<CR>
    nnoremap <leader>h :execute ':vimgrep /'.input("Search in project:").'/j * \|:copen'<CR>
    nnoremap <leader>= :vertical resize +15<CR>
    nnoremap <leader>- :vertical resize -15<CR>

    nnoremap <leader><Up> :wincmd k<CR> 

    nnoremap <leader>q :q<CR>
    nnoremap <leader>s :w<CR>

    "movement around panes/windows
    nnoremap <leader><Up> :wincmd k<CR>
    nnoremap <leader><Down> :wincmd j<CR>
    nnoremap <leader><Left> :wincmd h<CR>
    nnoremap <leader><Right> :wincmd l<CR>

    nnoremap <C-k> :wincmd k<CR>
    nnoremap <C-j> :wincmd j<CR>
    nnoremap <C-h> :wincmd h<CR>
    nnoremap <C-l> :wincmd l<CR>

    vnoremap <leader>y "*y


    "" dont lose focus over selected text when indenting
    xnoremap < <gv
    xnoremap > >gv


    "" in insert mode, leave mode using jk
    inoremap jk <esc>


    nnoremap <leader>o :!open %<CR>
    nnoremap <leader>t "=strftime("%Y%m%d%H%M%S")<CR>p



    "zettelkasten helper functions
    let note_titlename = '# ' . (strftime("%Y%m%d%H%M%S") . '.md')
    nnoremap <leader>nn :execute ":e" . (strftime("%Y%m%d%H%M%S") . '.md') <CR>:put ='# ' . (strftime('%Y%m%d%H%M%S') . '.md')<CR>$a<SPACE>

    tnoremap <Esc> <C-\><C-n>


    "trigger omnifunc completion with ctrl + space, similar to ide's
    inoremap <C-@> <C-x><C-o>
    inoremap <c-@> print<cr>
    inoremap <c-space> print<cr>
    inoremap <Nul> print<cr>
    inoremap <NUL> print<cr>

