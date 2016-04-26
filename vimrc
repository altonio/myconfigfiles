" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author: Bram Moolenaar <Bram@vim.org>
" Made more minimal by: Ben Orenstein
" Modified by : Ben McCormick
" Last change: 2014 June 8
"
" To use it, copy it to
" for Unix based systems (including OSX and Linux): ~/.vimrc
" for Windows : $VIM\_vimrc
"
" If you don't understand a setting in here, just type ':h setting'.
 
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off " requerido por Vundle plugin Manager


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

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
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'itchyny/calendar.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'reedes/vim-thematic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'edkolev/tmuxline.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required


" Make backspace behave in a sane manner.
set backspace=indent,eol,start
 
" Switch syntax highlighting on
syntax on
 
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
 
" Show line numbers
set number
set relativenumber

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Atajos para moverse a travez de ventanas divididas
" nnoremap <C-K> <C-W><C-K>

" Historial de comandos
set history=100

" Translate Shell options
set keywordprg=trans\ :es

" Pathogen options
" execute pathogen#infect()

" Airline options
"set laststatus=2
let g:aireline#extensions#tabline#enabled = 1

" Vim-Calendar options
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" Vim Thematic options

"let g:solarized_visibility="normal"

let g:thematic#themes = {
\ 'solarized' : { 'background' : 'dark',
\		  'laststatus' : 2,
\                 'airline-theme' : 'base16',
\		},
\}

let g:thematic#theme_name = 'solarized'
