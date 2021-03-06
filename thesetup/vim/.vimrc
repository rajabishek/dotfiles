" be iMproved, required - Lets use the latest vim settings and options
set nocompatible
so ~/.vim/plugins.vim


"--------------- Visuals ---------------"
"Enable syntax highlighting
syntax on
syntax enable

"Set the background color of the editor to dark
set background=dark

"Sets the color scheme of the editor
colorscheme atom-dark-256

"Sets the font to be used if macvim is used
set guifont=Fira_Code:h14

"Enable all 256 colors for terminal vim
set t_Co=256

"Set the colors of the line number bar to the editor background color
hi LineNr ctermbg=bg
hi LineNr guibg=bg

"Set the background of the split border to background color of the editor and
"the color of the split line to red
hi vertsplit ctermbg=red ctermfg=bg
hi vertsplit guibg=#96C697 guifg=bg


hi StatusLine ctermbg=red ctermfg=white
hi StatusLineNC ctermbg=black ctermfg=white

"Disable the scroll bars that are displayed on macvim
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"Remove the GUI tabs on macvim
set guioptions-=e

"Show the line numbers
set number

"Add some padding on the left handside - looks good if not using the number
"line on the left hand side
"set foldcolumn=1
"hi foldcolumn ctermbg=bg
"hi foldcloumn guibg=bg

"Make backspace behave like every other editor.
set backspace=indent,eol,start

"Set the leader key as comma
let mapleader=','

"Turn off the annoying error bells
set noerrorbells visualbell t_vb=

"--------------- Indentation ---------------"
"Set proper indentation width
set tabstop=4
set shiftwidth=4
augroup autoindentation
    "Clear out the contents of the group before proceeding
    autocmd!
    autocmd FileType scss setlocal shiftwidth=2 tabstop=2
    autocmd FileType rb setlocal shiftwidth=2 tabstop=2
augroup END


"--------------- Laravel Specific Commands ---------------"
"Make it easy to edit the routes file
nmap <Leader>ler :e routes/web.php<cr>

"Make it easy to open the configuration file
nmap <Leader>lec :e config/app.php<cr>

"Make it easy to create a new controller
nmap <Leader>lmc :!clear && php artisan make:controller

"Make it easy to run the artisan make command
nmap <Leader>lm :!clear && php artisan make:

"Make it easy to search for controllers
nmap <Leader><Leader>c :CtrlP<cr>app/Http/Controllers/

"Make it easy to search for models
nmap <Leader><Leader>m :CtrlP<cr>app/

"Make it easy to search for views
nmap <Leader><Leader>v :CtrlP<cr>resources/views/

"--------------- Split Management ---------------"
set splitbelow
set splitright
nmap <Leader>j <C-W><C-J>
nmap <Leader>k <C-W><C-K>
nmap <Leader>h <C-W><C-H>
nmap <Leader>l <C-W><C-L>


"--------------- Tab Styles ---------------"
"Set the color of inactive tabs to blue
hi TabLine ctermfg=Blue
"Set the color of the active tab to red
hi TabLineSel ctermfg=Red


"--------------- Search ---------------"
"Use colors to highlight the search results
set hlsearch

"Highlight the text as we search for the keyword
set incsearch


"--------------- Mappings ---------------"

"Make it easy to edit the vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Make it easy to edit the snippets file
nmap <Leader>es :e ~/.vim/snippets/

"Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

"Install the plugins through vundle
nmap <Leader>ip :PluginInstall<cr>

"Make it easy to edit the vundle plugins file
nmap <Leader>ep :tabedit $HOME/.vim/plugins.vim<cr>

"Make it easier to close a tab
nmap <Leader>ct :tabclose<cr>

"Make it east to open a new tab
nmap <Leader>ot :tabedit

"Make it easy to reload the snippets
nmap <Leader>rs :call ReloadAllSnippets()<cr>

"--------------- CtrlP Specific Commands ---------------"
"Set the files that the ctrlp plugin must ignore
let g:ctrlp_custom_ignore = 'vendor\|node_modules\|DS_Store\|bower_components\|.sass-cache\|.git\|build'

"Display the search results on top, order it top to bottom, there should be a
"min of 1 result and maximum of 30, and should see 30 at a time
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"Make it easy to browse the files
nmap <Leader>p :CtrlP<cr>

"Make it easy to browse the tags on the given file
nmap <Leader>bt :CtrlPBufTag<cr>

"Make it easy to browser the recent files
nmap <Leader>rf :CtrlPMRUFiles<cr>

"--------------- NERDTree Specific Commands ---------------"
"Let the - be used by the vim-vinegar plugin
let NERDTreeHijackNetrw = 0

"Make it easier to toggle NERDTree
nmap <Leader>1 :NERDTreeToggle<cr>


"--------------- Auto Commands ---------------"

"Automatically source the vimrc file on saving it.
augroup autosourcing
    "Clear out the contents of the group before proceeding
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END
