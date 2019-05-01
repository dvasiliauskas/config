
"AUTOCOMMANDS==================================================================

"insert mode is easily seen
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

"spell check for Markdown files
"ref: https://www.adamalbrecht.com/blog/2019/10/21/spell-check-in-vim-for-markdown-and-git-commit-messages/
autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell




"Ref: https://superuser.com/a/22451
"==============================================================================
augroup vimrc_autocmds
au!
    autocmd BufRead * highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
    autocmd BufRead * match OverLength /\%81v.*/
augroup END
"==============================================================================
"
"
"Ref: https://stackoverflow.com/a/47967462/10908060
function! OpenCompletion()
    if !pumvisible() && ((v:char >= 'a' && v:char <= 'z') || (v:char >= 'A' && v:char <= 'Z'))
        call feedkeys("\<C-x>\<C-o>", "n")
    endif
endfunction

autocmd InsertCharPre * call OpenCompletion()
"==============================================================================


"parens matching on insert
"ino " ""<left>
"ino ' ''<left>
"ino ( ()<left>
"ino [ []<left>
"ino { {}<left>
"ino {<CR> {<CR>}<ESC>O
