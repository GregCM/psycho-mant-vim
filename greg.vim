" Greg Vim color scheme "
" Name:         greg2.vim
" Maintainer:   Greg Caceres <gregcaceres@gmail.com>
" Last Change:  15 Jun 2020
" Version:      0.1
" 
" This is based on the escuro theme,
" which is based on the railscasts theme.
" See README.md

if has("gui_running")
  set background=dark
endif

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "greg2"

hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag

hi Normal                    guifg=#E6E1DC guibg=#141414 ctermfg=254 ctermbg=NONE
hi Cursor                    guifg=#000000 guibg=#FFFFFF ctermbg=Black ctermfg=Black
hi link iCursor              Cursor
hi link iTerm                Cursor
hi CursorLine                guibg=NONE guifg=NONE gui=NONE ctermfg=NONE  ctermbg=NONE cterm=bold
hi link CursorColumn         CursorLine
hi ColorColumn               ctermbg=NONE
hi StatusLine                guifg=#444444 guibg=#cccccc gui=bold ctermfg=233   ctermbg=246 cterm=bold
hi StatusLineNC              guifg=#444444 guibg=#aaaaaa gui=NONE ctermfg=233   ctermbg=237 cterm=none
hi VertSplit                 guifg=Black   guibg=#aabbee gui=bold ctermfg=237   ctermbg=237 cterm=none

hi Comment                   guifg=#BC9458 ctermfg=215 gui=italic
hi Constant                  guifg=#3E87BB ctermfg=56
hi link Identifier Constant
hi Define                    guifg=#D2802D ctermfg=166 gui=bold     cterm=bold
hi Statement                 guifg=#D2802D ctermfg=166 gui=NONE     cterm=NONE
hi Error                     guifg=#D60000 ctermbg=NONE ctermfg=87 cterm=bold guibg=#990000
hi Function                  guifg=#FFD75F ctermfg=220 gui=NONE     cterm=NONE
hi Keyword                   guifg=#CC7833 ctermfg=173 cterm=NONE
hi link Include              Statement
hi link PreCondit            Statement
hi Todo                      ctermbg=NONE ctermfg=160 guifg=#d70000 guibg=NONE gui=bold cterm=none

hi LineNr                    guifg=#595959 guibg=#2b2b2b ctermfg=243   ctermbg=977
hi CursorLineNr              guifg=#999999 guibg=#242424 ctermfg=White ctermbg=NONE cterm=NONE gui=NONE
hi String                    guifg=#A5C261 ctermfg=47
hi link Number               String
hi PreProc                   guifg=#E6E1DC ctermfg=103
hi Search                    guifg=NONE    ctermfg=NONE guibg=#444444 term=NONE ctermbg=NONE cterm=underline
hi IncSearch                 guifg=White   guibg=Black ctermfg=White  ctermbg=Black
hi Title                     guifg=#FFFFFF ctermfg=15
hi Type                      guifg=#DA4939 ctermfg=160  gui=NONE      cterm=NONE
hi Visual                    guibg=#5A647E gui=reverse  ctermfg=Black ctermbg=LightYellow cterm=bold,italic

hi link diffAdded            String
hi link diffRemoved          Type
hi link diffLine             PreProc
hi link diffSubname          Comment

hi DiffAdd                   guifg=#E6E1DC ctermfg=7 guibg=#519F50 ctermbg=59
hi DiffDelete                guifg=#E6E1DC ctermfg=7 guibg=#660000 ctermbg=52
hi DiffChange                guifg=#E6E1DC ctermfg=7 guibg=#A36029 ctermbg=130
hi DiffText                  guifg=#FFFFFF ctermfg=15 guibg=#EE3333 ctermbg=124 gui=bold cterm=bold
hi Special                   guifg=#DA4939 ctermfg=124

hi pythonBuiltin             guifg=#6D9CBE ctermfg=62 gui=NONE cterm=NONE

hi NonText                   guifg=#404040 ctermfg=8
hi SpecialKey                guifg=#404040 ctermfg=8

hi xmlTag                    guifg=#E8BF6A ctermfg=179
hi xmlTagName                guifg=#E8BF6A ctermfg=179
hi xmlEndTag                 guifg=#E8BF6A ctermfg=179

hi SpellBad                  guifg=#D70000 ctermfg=160 ctermbg=NONE cterm=underline
hi SpellRare                 guifg=#D75F87 ctermfg=168 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellCap                  guifg=#D0D0FF ctermfg=189 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchParen                guifg=#FFFFFF ctermfg=NONE guibg=#005f5f ctermbg=NONE cterm=reverse,bold

hi Ignore                    ctermfg=Black
hi WildMenu                  guifg=Black   guibg=#ffff00 gui=bold cterm=bold
hi Directory                 none
hi link Directory            Identifier

hi Folded                    guifg=#585858 guibg=#1c1c1c gui=NONE ctermbg=NONE ctermfg=189 cterm=italic
hi FoldColumn                none
hi link FoldColumn           Folded

hi Pmenu                     guifg=#F6F3E8 guibg=#444444 gui=NONE ctermbg=238 ctermfg=White cterm=NONE
hi PmenuSel                  guifg=#000000 guibg=#A5C261 gui=NONE ctermbg=150 ctermfg=Black
hi PMenuSbar                 guibg=#5A647E gui=NONE ctermbg=66  cterm=NONE
hi PMenuThumb                guibg=#AAAAAA gui=NONE ctermbg=248 cterm=NONE

" Vim 7.3+
