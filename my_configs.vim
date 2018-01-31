" Disable arrow keys to force usable of h/j/k/l
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4

" Change into the directory of the file
nnoremap ,cd :cd %:p:h<CR>

nnoremap ,c :!cat %\|pbcopy<CR>

set mouse=n

" If installed using Homebrew
set rtp+=/usr/local/opt/fzf

