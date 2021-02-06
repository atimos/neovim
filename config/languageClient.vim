let g:LanguageClient_autoStart = 1 
let g:LanguageClient_diagnosticsEnable = 0 
let g:LanguageClient_serverCommands = {}

autocmd BufReadPost *.rs setlocal filetype=rust

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'nightly', 'rust-analyzer'],
    \ }


