autocmd BufReadPost *.rs setlocal filetype=rust

let g:LanguageClient_serverCommands["rust"] = ['rustup', 'run', 'nightly', 'rls']
