"==================================="
" Configure competitive programming environment "
"==================================="
set makeprg=make\ -B\ -f\ ~/makefile_slow\ %<
map <F5> :make<CR>
map <F8> :!make -B -f ~/makefile_fast %<<CR>
map <F6> :!./%< <input.txt<CR>
map <C-F6> :!./%<<CR>
map <F7> :!./%< <input.txt 2>/dev/null<CR>
" map <C-T> :!./test.sh %<<CR>
autocmd FileType python map <buffer> <F6> :!python3 %<CR>
autocmd FileType kotlin map <buffer> <F6> :!java -jar %<.jar <input.txt<CR>
autocmd FileType kotlin map <buffer> <C-F6> :!java -jar %<.jar<CR>
"==================================="
" Configure competitive programming environment End "
"==================================="


"==================================="
" Turn off newbie movement "
"==================================="
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
"==================================="
" Turn off newbie movement End "
"==================================="
