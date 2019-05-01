
"==========================GUI CLIENT: NEOVIDE==================================
"Adjust for different os as the control sequences from the keyboard may be
"different
if exists("g:neovide")
    nmap <c-c> "+y
    vmap <c-c> "+y
    nmap <D-v> "+p
    inoremap <D-v> <c-r>+
    cnoremap <D-v> <c-r>+
    " use <c-r> to insert original character without 
    " triggering things like auto-pairs
    inoremap <c-r> <D-v>

    let g:neovide_input_macos_alt_is_meta = v:true
endif



