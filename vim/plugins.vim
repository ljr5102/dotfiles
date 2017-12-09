" use minpac
packadd minpac

call minpac#init()

" ctrlp fuzzy file finder
call minpac#add("kien/ctrlp.vim")
" have ctrlp use silver searcher and quicker indexing
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

" polyglot language package
call minpac#add("sheerun/vim-polyglot")

" status tabline
call minpac#add("vim-airline/vim-airline")

" package for surrounding delimiters
call minpac#add("tpope/vim-surround")

" easier commenting out
call minpac#add("tpope/vim-commentary")

" asynchronous linting
call minpac#add("w0rp/ale")



" color scheme
call minpac#add("morhetz/gruvbox")
syntax on
colorscheme gruvbox
set background=dark




" commands for updating and cleaning
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
