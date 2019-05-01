"PLUGIN REMAPS==================================================================
    "debug remaps (vimspector)
    nnoremap <leader>dd :call vimspector#Launch()<CR>
    nnoremap <leader>de :call vimspector#Reset()<CR>


    "fuzzy searching remaps
    nnoremap <leader><space> :exec 'Rg' expand('<cword>')<CR>
    nnoremap <leader>f :Files<CR>
    nnoremap <A-1> :NERDTreeToggle<CR>
    nnoremap <A-2> :Git<CR>
    nnoremap <A-3> :Buffers<CR>





"" ==========Plugins==========

    "" ==========Plugin load via Vim-Plug==========
    "" Plugins will be downloaded under the specified directory.

        "" ==========ENABLE VIM-PLUG MANAGER========
        "call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

        "" ==========PLUGIN_DECLARATION=========
        "Plug 'tpope/vim-sensible'
        "Plug 'junegunn/seoul256.vim'
        "Plug 'morhetz/gruvbox'
        "Plug 'airblade/vim-gitgutter'
        "Plug 'tpope/vim-fugitive'
        "Plug 'tpope/vim-fugitive'
        "Plug 'vim-airline/vim-airline'
        "Plug 'vim-airline/vim-airline-themes'
        "call plug#end()









    "" ==========Plugin load via Vim8+ native pack load ==========
    "" Vim8+ required to make use of this feature
    "" Ref: https://shapeshed.com/vim-packages/
    "" Ref: https://opensource.com/article/20/2/how-install-vim-plugins
    "" 1   Placing packages in '~/.vim/pack/vendor/start/<package>' will auto load on vim start
    "" EX: git clone --depth 1 https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
    "" 2   Placing packages in '~/.vim/pack/vendor/opt/<package>', will add them, but will need explicit addition
    "" EX: git clone --depth 1 https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/opt/nerdtree
    "" EX: git clone --depth 1 git@github.com:morhetz/gruvbox.git ~/.vim/pack/vendor/opt/gruvbox
    "" add to .vimrc : packadd <vendor> -> declare the plugin for usage
    

        "" ==========MANUAL_PLUGIN_INSTALL=========
        "" Run manual_vim8+_plugin_install script


        "" ==========PLUGIN_DECLARATION=========
        packadd! nerdtree
        packadd! airline
        packadd! gitgutter
        packadd! fugitive
        packadd! airline-themes
        packadd! fzf-vim
        ""packadd! vimspector

        packadd! telescope
        packadd! nvim-treesitter
        packadd! plenary

        packadd! nvim-lspconfig


        packadd! cmp-nvim-lsp
        packadd! cmp-buffer
        packadd! cmp-path
        packadd! cmp-cmdline
        packadd! nvim-cmp
        packadd! everforest










"" ==========Plugin Configuration==========

    "" ==========netrw=========
    let g:netrw_liststyle = 3 "directory list style, can be cycled with i"
    let g:netrw_banner=0 "removing banner""
    let g:netrw_browse_split = 2 "open files in a vertical splitv"
    let g:netrw_winsize = 75 "directory explorer set to 25%
    let g:netrw_altv = 1 "vertical split will be to the right, when opening with 'v'
    let g:netrw_preview=1 "preview split will be to the right, when opening with 'p'


    "" ==========airline-themes=========
    let g:airline_theme='base16_ocean'


    "" ==========nerdtree=========
    let g:NERDTreeWinSize=60


    "" ==========gitgutter=========
    set updatetime=100

    function! GitStatus()
      let [a,m,r] = GitGutterGetHunkSummary()
      return printf('+%d ~%d -%d', a, m, r)
    endfunction
    set statusline+=%{GitStatus()}


    "" ==========fzf========
    "" !NOTE, fzf binary must be on the path
    "" !NOTE, link to where the fzf repo is cloned as rtp 
    set rtp+=~/.vim/pack/vendor/opt/fzf

    let g:fzf_layout = { 'window' : { 'width':0.8, 'height': 0.8 } }

    "preview window below, shown by default, ctrl-/ to hide it
    let g:fzf_preview_window = ['down:40%:', 'ctrl-/']


    "" ==========vimspector=======
    let g:vimspector_enable_mappings = 'HUMAN'



"PYTHON PROVIDERS, configure to system path

"mac
"let g:python3_host_prog = '~/homebrew/bin/python3'
"
"linux
"let g:python3_host_prog = '~/.local_env/bin/python3'


"zettelkasten helper functions
let note_titlename = '# ' . (strftime("%Y%m%d%H%M%S") . '.md')
nnoremap <leader>nn :execute ":e" . (strftime("%Y%m%d%H%M%S") . '.md') <CR>:put ='# ' . (strftime('%Y%m%d%H%M%S') . '.md')<CR>$a<SPACE>



"in the case in tmux doesnt support truecolors
""if exists("$TMUX")
""        set t_Co=256
""        set notermguicolors
""else
""        set termguicolors
""endif

"Lua for nvim extensions...
lua require'nvim-treesitter.configs'.setup {highlight = { enable = true }}

set completeopt=menuone,noinsert,noselect
""let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']


if exists('+termguicolors')
    let &t_8f = "\<ESC>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<ESC>[48;2;%lu;%lu;%lum"
endif




let g:c_syntax_for_h = 1

""lua require'lspconfig'.clangd.setup{}
""lua require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach }

""autocmd BufEnter * lua require'completion'.on_attach()

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

"imap <tab> <Plug>(completion_smart_tab)
"imap <s-tab> <Plug>(completion_smart_s_tab)




lua << EOF
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>ll', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'clangd', 'rust_analyzer', 'tsserver', 'sourcekit', 'pyright', 'gopls', 'jdtls' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
EOF


""Directory syncing
let directory_location = $PWD[0:20]
let syncable_directory = "Workspace/rootprj"

if (directory_location =~ syncable_directory)
    autocmd BufWritePost * !rsync -a $PWD/ root@192.168.1.1:/root/${PWD:25}
    ""plain command via shell -> rsync -a $PWD/root@192.168.1.1:/root/${PWD:25}
endif


