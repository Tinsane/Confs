set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

if isdirectory(expand('$HOME/.vim/bundle/Vundle.vim'))
  call vundle#begin()
  " alternatively, pass a path where Vundle should install plugins
  "call vundle#begin('~/some/path/here')

  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  " Required
  Plugin 'gmarik/vundle'
  " Install plugins that come from github.  Once Vundle is installed, these can be
  " installed with :PluginInstall
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'Valloric/MatchTagAlways'
  Plugin 'vim-scripts/netrw.vim'
  Plugin 'tpope/vim-sensible'
  " Plugin 'SirVer/ultisnips'
  Plugin 'bling/vim-airline'
  Plugin 'scrooloose/nerdtree'
  Plugin 'rafi/awesome-vim-colorschemes'
  Plugin 'ctrlpvim/ctrlp.vim'

  Plugin 'leafgarland/typescript-vim'

  "cd ~
  "mkdir ycm_build
  "cd ycm_build/
  "cmake -G "Unix Makefiles" . ~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp
  "cmake --build . --target ycm_core

  "Plug 'Valloric/YouCompleteMe'

  function! BuildYCM(info)
      if a:info.status == 'installed' || a:info.force
          !./install.py --clang-completer
      endif
  endfunction

  Plugin 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
  " Provide many default snippets for a variety of snippets.
  " Uncomment and :PluginInstall to enable
  " Plugin 'honza/vim-snippets'

  " Plugin 'w0rp/ale'

  " The following are examples of different formats supported.
  " Keep Plugin commands between vundle#begin/end.
  " plugin on GitHub repo
  " Plugin 'tpope/vim-fugitive'
  " plugin from http://vim-scripts.org/vim/scripts.html
  " Plugin 'L9'
  " Git plugin not hosted on GitHub
  " Plugin 'git://git.wincent.com/command-t.git'
  " git repos on your local machine (i.e. when working on your own plugin)
  " Plugin 'file:///home/gmarik/path/to/plugin'
  " The sparkup vim script is in a subdirectory of this repo called vim.
  " Pass the path to set the runtimepath properly.
  " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
  " Install L9 and avoid a Naming conflict if you've already installed a
  " different version somewhere else.
  " Plugin 'ascenator/L9', {'name': 'newL9'}

  " All of your Plugins must be added before the following line
  call vundle#end()
else
  echomsg 'Vundle is not installed. You can install Vundle from'
      \ 'https://github.com/VundleVim/Vundle.vim'
endif

" source /usr/share/vim/google/google.vim

" filetype on                              " Включаем распознавание типов файлов и типо-специфичные плагины
" filetype indent on
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"


"==================================="
" Configure YCM "
"==================================="
let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=0
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
"==================================="
" Configure YCM End "
"==================================="


"==================================="
" Configure VimAirline "
"==================================="
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "%l/%L Col:%c" "Кастомная графа положения курсора
"==================================="
" Configure VimAirline End "
"==================================="


" Put your non-Plugin stuff after this line


"==================================="
" Configure keyboard encodings "
"==================================="
set encoding=utf-8                       " Default encoding utf-8
set termencoding=utf-8                   " Terminal default encoding utf-8
set fileencodings=utf-8,cp1251,koi8-r    " Supported file encodings
set keymap=russian-jcukenwin             " Keymap that allows having russian letters
"==================================="
" Configure keyboard encodings End "
"==================================="


set hlsearch
set iminsert=0
set imsearch=0
set incsearch

set novisualbell                         " Выключаем бибиканье и мигание
set t_vb=

set ignorecase
set smartcase
set si                                   " Умное добавление табов (с учетом скобок и пр.)
set tabstop=4                            " Ширина таба - 4 пробела
set shiftwidth=4                         " Количество вставляемых пробелов при использовании < и >
set expandtab                            " Разворачивать табы в пробелы
set smarttab                             " Удалять пробелы по 4, если они в начале строки


syntax on
set noeol
set showcmd
set autoindent
set cindent
set mouse=a
set clipboard=unnamedplus

set autoread                             " Перечитывать открытые файлы если они были изменены извне
set autowrite


set exrc
set secure

" set omnifunc=ale#completion#OmniFunc
" map <C-F>r <PLUG>(ale_find_references)
" map <C-F>d <PLUG>(ale_go_to_definition)

" For MacOS copy-paste work
" vnoremap <C-c> :w !pbcopy<CR><CR>
" noremap <C-v> :r !pbpaste<CR><CR>


"==================================="
" Configure styles "
"==================================="
colorscheme gruvbox                      " Cool colorscheme
set nu rnu                               " Relative line numbers
set cursorline                           " Show line under cursor
set colorcolumn=110                      " Show line after 110 characters
set t_Co=256                             " Tell Vim that terminal supports 256 colors
highlight ColorColumn ctermbg=lightgray
highlight lCursor guifg=NONE guibg=Cyan
"==================================="
" Configure styles End "
"==================================="


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


"==================================="
" Configure native mappings "
"==================================="
map <C-K> :YcmCompleter GoToDeclaration<CR>
map <C-T> :NERDTreeToggle<CR>
"==================================="
" Configure native mappings End "
"==================================="
