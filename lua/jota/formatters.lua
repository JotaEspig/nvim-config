local vim = vim

vim.cmd("autocmd BufWritePost *.h,*.hpp,*.c,*.cpp,*.vert,*.frag,*.glsl :lua vim.lsp.buf.format()")
vim.cmd("autocmd BufWritePost *.go silent !gofmt -s -w .")
vim.cmd("autocmd BufWritePost *.go silent !goimports -w .")
vim.cmd("autocmd BufWritePost *.py silent !autopep8 % -i")
