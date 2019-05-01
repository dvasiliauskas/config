
function! DiagramGenerator()
    let filename = expand('%:t')
    echo filename
    echo "generating name"
    !plantuml -utxt %


    let diagram_filename = split(filename,  '[.]')
    let diagram_filename = diagram_filename[0] . '.utxt'

    echo diagram_filename
    execute 'read' diagram_filename
    echo diagram_filename
    execute '!rm ' . diagram_filename
endfunction

nnoremap <silent> <leader>m :call DiagramGenerator()<CR><CR>
