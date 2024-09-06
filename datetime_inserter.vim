if exists('g:loaded_datetime_inserter')
    finish
endif
let g:loaded_datetime_inserter = 1

function! s:InsertDateTime2()
    let l:datetime = strftime('%Y-%m-%d %H:%M:%S')
    let l:line = getline('.')
    let l:col = col('.')
    let l:new_line = strpart(l:line, 0, l:col - 1) . l:datetime . strpart(l:line, l:col - 1)
    call setline('.', l:new_line)
    call cursor(line('.'), l:col + len(l:datetime))
endfunction

command! InsertDateTime2 call s:InsertDateTime2()

