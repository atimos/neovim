let g:LanguageClient_autoStart = 1 
let g:LanguageClient_diagnosticsEnable = 0 
let g:LanguageClient_serverCommands = {}

autocmd FileType rust nnoremap <buffer> <C-[> :call LanguageClient_textDocument_hover()<CR>
autocmd FileType rust nnoremap <buffer> <C-]> :call LanguageClient_textDocument_definition()<CR>
