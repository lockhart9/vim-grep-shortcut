
let s:save_cpo = &cpo
set cpo&vim

function! grepshortcut#grep_by_input() abort "{
    let query = input('Grep: ')
    if strlen(query) > 0 
        execute 'AsyncRun grep -i ' . query . ' . -R -n'
    else
        echo 'No input supplied'
    endif
endfunction "}

function! grepshortcut#grep_by_input_with_fileextension(...) abort "{
    echo a:000
    let query = input('Grep: ')
    if strlen(query) > 0
        let include_options = ''
        for ext in a:000
            let include_options = include_options . ' --include=*.' . ext
        endfor
        execute 'AsyncRun grep -i ' . query . ' . -R -n ' . include_options
    else
        echo 'No input supplied'
    endif
endfunction "}

let &cpo = s:save_cpo
unlet s:save_cpo
