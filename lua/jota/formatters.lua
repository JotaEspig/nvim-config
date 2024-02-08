local vim = vim

vim.api.nvim_exec([[
function FormatBuffer()
    if &modified && !empty(findfile('.clang-format', expand('%:p:h') . ';'))
        let cursor_pos = getpos('.')
        :%!clang-format
        call setpos('.', cursor_pos)
    endif
endfunction
]], false)

vim.cmd("autocmd BufWritePre *.h,*.hpp,*.c,*.cpp,*.vert,*.frag,*.glsl :call FormatBuffer()")
vim.cmd("autocmd BufWritePost *.go silent !gofmt -s -w .")
vim.cmd("autocmd BufWritePost *.go silent !goimports -w .")
vim.cmd("autocmd BufWritePost *.py silent !autopep8 % -i")
