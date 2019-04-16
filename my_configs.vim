autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4

" Change into the directory of the file
nnoremap ,cd :cd %:p:h<CR>

nnoremap ,c :!cat %\|pbcopy<CR>

set mouse=n

set rtp+=~/.fzf

" Ag word under cursor
nnoremap <Leader>a :Ag <C-r><C-w><CR>

map <leader>j :Files<CR>

nnoremap <leader>ya :%y<CR>
nnoremap <leader>bd :bp\|bd #<cr>
" Automatic Filename expansions for commands
" Directory for current file
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
" Current file name
cnoremap %f <C-R>=fnameescape(expand('%:t'))<cr>
" Full path for current file
cnoremap %p <C-R>=fnameescape(expand('%:p'))<cr>

nnoremap <leader>et :e ~/.tmux.conf<cr>

" Custom macros
iabbrev pry! require "pry"; binding.pry
iabbrev pdb! import pdb; pdb.set_trace()
iabbrev transaction! ActiveRecord::Base.transaction(requires_new: true) do

" Show line numbers
set number

" Make the cursor a lot thinner when in insert mode.
" https://stackoverflow.com/a/30199177
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" When yanking, put the contents on the system-wide clipboard
set clipboard=unnamed

" Copy current file path to the clipboard
nnoremap <leader>cf :let @*=expand("%")<CR>

nnoremap <leader>or :VtrOpenRunner<cr>
nnoremap <leader>sr :VtrSendLinesToRunner<cr>
nnoremap <leader>ar :VtrSendAllTextToRunner<cr>

map <leader>g :call HashInGithub()<CR>
fun! HashInGithub()
    let commit = expand("<cword>")
    let url = "https://github.com/gocardless/payments-service/commit/" . commit
    exec 'silent !open ' . url
	redraw!
endfun

set esckeys
