
let s:save_cpo = &cpo
set cpo&vim

function! grepshortcut#grep_by_input() abort
    let query = input('Grep: ')
    execute 'AsyncRun grep -i ' . query . ' -R -n'
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
