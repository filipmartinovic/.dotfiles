"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                                                                                                                   ""
""  General settings                                                                                                 ""
""                                                                                                                   ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("syntax")
    syntax on
endif

" ovo je originalno bilo:
" syntax on
" ovo iznad sam stavio jer je tako u gap manualu reklo (vidi na dnu)

" allows use of mouse scroll wheel in neovim
set mouse=a
set scrolloff=15
set sidescrolloff=30

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set nowrap
set smartcase

set nohlsearch
" uzaludni pokusaj da napravim command za brzi highlight serach command HLS ":set hlsearch"

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgray

let maplocalleader = '\'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                                                                                                                   ""
""  Plugin manager settings                                                                                          ""
""                                                                                                                   ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()

" Plug 'psliwka/vim-smoothie'
" Plug 'skamsie/vim-lineletters'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'ycm-core/YouCompleteMe'
Plug 'skywind3000/vim-auto-popmenu'
" ponekad je poslije updatea kaze da je YCM server shutdownan
" tada treba pokrenuti install.py pomocu pyhthon3 naredbe u terminalu
" lokacija filea je /home/filip/.local/share/nvim/plugged/YouCompleteMe/

call plug#end()

"Commands
"Command 	Description
"PlugInstall [name ...] [#threads] 	Install plugins
"PlugUpdate [name ...] [#threads] 	Install or update plugins
"PlugClean[!] 	Remove unlisted plugins (bang version will clean without prompt)
"PlugUpgrade 	Upgrade vim-plug itself
"PlugStatus 	Check the status of plugins
"PlugDiff 	Examine changes from the previous update and the pending changes
"PlugSnapshot[!] [output path] 	Generate script for restoring the current snapshot of the plugins

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                                                                                                                   ""
""  My custom keybindings                                                                                            ""
""                                                                                                                   ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <C-p> "+p
" imap <C-p> <Esc>"+pa
vmap <C-y> "+y
vmap <C-d> "+d
" doesnt work Sadge imap <C-1> ^{-1}
" possible workaround: https://old.reddit.com/r/neovim/comments/73b3fc/how_to_map_ctrlshiftalt_keys_in_terminal_neovim/

imap <C-b> subscript<S-Enter>
imap <C-p> supscript<S-Enter>
imap <C-s> \{<S-Enter><Esc>a\<Esc>i
imap <C-d> $<S-Enter>
" map <C-b> <Nop>
" map <C-n> <Nop>

" Toggle highlight search
" htts://stackoverflow.com/questions/9054780
let hlstate=0
nnoremap <F3> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                                                                                                                   ""
""  YouCompleteMe settings                                                                                           ""
""                                                                                                                   ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ycm_autoclose_preview_window_after_completion = 1
" ovo treba jer ycm izbacuje neki preview, na googleu je ovo bilo rjesenje,
" ima i drugih rjesenja

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                                                                                                                   ""
""  vim-auto-popmenu settings                                                                                        ""
""                                                                                                                   ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ycm_autoclose_preview_window_after_completion = 1
" ovo treba jer ycm izbacuje neki preview, na googleu je ovo bilo rjesenje,
" ima i drugih rjesenja
"
let g:apc_enable_ft = {'gap':1, 'g':1}

let g:ycm_filetype_blacklist = {'gap':1, 'g':1}

set cpt=.,k,w,b

set completeopt=menu,menuone,noselect

set shortmess+=c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                                                                                                                   ""
""  UltiSnips settings                                                                                               ""
""                                                                                                                   ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:UltiSnipsExpandTrigger="<S-Enter>"
let g:UltiSnipsJumpBackwardTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<S-Space>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" I've had some errors with UltiSnips not finding default snips location
" folder. Actually one should just create folder mkdir ~/.config/nvim/UltiSnips
" and that's it, now it works. I've though about trying commands below, but
" better not really
" let g:UltiSnipsSnippetDirectories=[$HOME.'/.local/share/nvim/plugged/ultisnips']
" ./.local/share/nvim/plugged/ultisnips/pythonx/UltiSnips
" ./.local/share/nvim/plugged/ultisnips/autoload/UltiSnips

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                                                                                                                   ""
""  I dont know what are these settings                                                                              ""
""                                                                                                                   ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 26

" map <silent>, <Plug>LineLetters

" prepoznaje vrstue filea koju edita, npr .txt, .tex, .cpp, .py i slicno
" potrebno za vimtex plugin
filetype plugin on 
filetype indent on

" syntax enable
" ovo sam zakomentirao, imao sam i syntax enable i syntax on, nez koja je
" razlika, treba malo to izguglati

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                                                                                                                   ""
""  VimTex settings                                                                                                  ""
""                                                                                                                   ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" let g:vimtex_view_method = 'mupdf'
" let g:vimtex_view_mupdf_options = '-A 10'
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'latexmk'
" Disable custom warnings based on regexp
let g:vimtex_quickfix_ignore_filters = [
      \ "LaTeX hooks Warning:",
      \ "Generic hook 'package/before/framed' is deprecated.",
      \ "Generic hook 'package/before/float' is deprecated.",
      \ "Font shape",
      \ "You need to compile with XeLaTeX or LuaLaTeX to use the Fira fonts",
      \ "vbox (46.72319pt too high) detected at line",
      \]
" ok, zelimo latexmk pokrenuti kao -bibtex-cond1 (pogledaj latemk
" documentation da vidis ak te zanima kaj je to. Ugl, tako zelimo pokrenuti,
" ali ne mozemo samo staviti u compiler_method gore taj nastavak, nego treba
" definirati u opcijama (te opcije su postavljene objasnjenje u :h za
" g:vimtex_compiler_latexmk, i napravi se ovako:
"
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \   '-bibtex-cond1',
    \ ],
    \}
" https://www.google.com/search?q=vimtex+don%27t+lose+focus+on+forward+search
" https://github.com/lervag/vimtex/issues/78
" https://github.com/lervag/vimtex/issues/1134
" https://github.com/lervag/vimtex/issues/865
" https://github.com/lervag/vimtex/issues/1276
" https://github.com/lervag/vimtex/issues/2264
" https://github.com/lervag/vimtex/issues/1773
" Ovdje sam trazio nacin kako zadrzati focus poslije \lv searcha u vimtexu,
" evo ti nacina
augroup vimtex
  autocmd!
  autocmd User VimtexEventView call b:vimtex.viewer.xdo_focus_vim()
"  autocmd User VimtexEventQuit VimtexClean
augroup END

" OVO JE IZ :h vimtex STAVLJAM TAKO DA KADA NAPISEM \ DA MI KRENE AUTOCOMPLETE
" MOZDA USPIJE eShurg

if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

" OVO JE IZ :h youcompleteme STAVLJAM TAKO DA MI NE POKAZUJE [ID] COMPLETEOVE
" KAKO BIH POSTIGAO DA <snip> BUDU PRVI

let g:ycm_min_num_identifier_candidate_chars = 200

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                                                                                                                   ""
""  GAP settings                                                                                                     ""
""                                                                                                                   ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ovdje kopiram iz GAPa za gap syntax highlighting
" https://www.gap-system.org/Faq/faq.html#8.3
" https://docs.gap-system.org/doc/ref/chap6.html#X7B67FF1E87FE67D1
"
" For GAP files
augroup gap
  " Remove all gap autocommands
  au!
  autocmd BufRead,BufNewFile *.g,*.gi,*.gd set filetype=gap comments=s:##\ \ ,m:##\ \ ,e:##\ \ b:#

  " " I'm using the external program `par' for formatting comment lines starting
  " " with `##  '. Include these lines only when you have par installed.
  " autocmd BufRead,BufNewFile *.g,*.gi,*.gd set formatprg="par w76p4s0j"
  " autocmd BufWritePost,FileWritePost *.g,*.gi,*.gd set formatprg="par w76p0s0j"
augroup END
" za GAP bih jos predlozio da se pogleda GAP Reference Manual chapter 6.9
" Editing using the readline library
