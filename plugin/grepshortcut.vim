
let s:save_cpo = &cpo
set cpo&vim

command! GrepShortcut call grepshortcut#grep_by_input()

let &cpo = s:save_cpo
unlet s:save_cpo
