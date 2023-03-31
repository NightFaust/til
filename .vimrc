" vimrc for til

function CountTILs()
    execute '%s/^- \[//n'
endfunction

nnoremap <leader>c :call CountTILs()<cr>
