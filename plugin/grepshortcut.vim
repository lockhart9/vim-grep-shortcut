
let s:save_cpo = &cpo
set cpo&vim

command! GrepShortcut call grepshortcut#grep_by_input()
command! -nargs=* GrepShortcutX call grepshortcut#grep_by_input_with_fileextension(<f-args>)

let &cpo = s:save_cpo
unlet s:save_cpo
