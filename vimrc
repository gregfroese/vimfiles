" bring in the bundles for mac and windows
set rtp+=~/vimfiles/vundle.git/
set rtp+=~/.vim/vundle.git/
call vundle#rc()

runtime! common_config/*.vim
runtime! custom_config/*.vim

" for git, add spell checking and automatic wrapping at 72 columns
autocmd Filetype gitcommit setlocal spell textwidth=72


map <silent><F12> :let &mouse=(&mouse == "a"?"":"a")<CR>:call
ShowMouseMode()<CR>
imap <silent><F12> :let &mouse=(&mouse == "a"?"":"a")<CR>:call
ShowMouseMode()<CR>
function ShowMouseMode()
  if (&mouse == 'a')
    echo "mouse-vim"
  else
    echo "mouse-xterm"
  endif
endfunction
