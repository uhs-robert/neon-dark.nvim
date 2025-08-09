" Neon Dark Theme - Vim Compatibility Layer
" Professional dark theme with vibrant neon accent colors
" Compatible with both Vim and Neovim

if exists('g:colors_name')
  highlight clear
endif

if exists('syntax_on')
  syntax reset
endif

set background=dark
let g:colors_name = 'neon-dark'

" Check for Neovim lua support
if has('nvim') && has('lua')
  " Use the full Lua implementation in Neovim
  lua require('neon-dark').setup()
  finish
endif

" Fallback Vim colorscheme implementation
" Basic color definitions
let s:bg = '#000000'
let s:fg = '#D4D4D4'
let s:line_number = '#5A5A5A'
let s:selection = '#264F78'
let s:comment = '#6A9955'
let s:red = '#F44747'
let s:green = '#6A9955'
let s:blue = '#569CD6'
let s:yellow = '#DCDCAA'
let s:orange = '#CE9178'
let s:pink = '#C586C0'
let s:light_blue = '#9CDCFE'
let s:light_green = '#B5CEA8'
let s:blue_green = '#4EC9B0'

" Neon accent colors
let s:neon_green = '#39FF14'
let s:neon_blue = '#1F51FF'
let s:neon_red = '#FF073A'
let s:neon_yellow = '#FFFF33'
let s:neon_purple = '#B026FF'
let s:neon_cyan = '#0FF0FC'

" Color mapping for terminal compatibility
function! s:hex_to_term(hex_color)
  let l:color_map = {
    \ '#000000': '0',   '#D4D4D4': '252', '#5A5A5A': '240',
    \ '#264F78': '24',  '#6A9955': '107', '#F44747': '203',
    \ '#569CD6': '74',  '#DCDCAA': '187', '#CE9178': '173',
    \ '#C586C0': '176', '#9CDCFE': '117', '#B5CEA8': '151',
    \ '#4EC9B0': '79',  '#39FF14': '118', '#1F51FF': '21',
    \ '#FF073A': '196', '#FFFF33': '226', '#B026FF': '129',
    \ '#0FF0FC': '51',  '#080808': '232', '#555555': '240'
  \ }
  return get(l:color_map, a:hex_color, 'NONE')
endfunction

" Helper function to set highlights
function! s:hi(group, fg, bg, attr)
  let l:cmd = 'highlight ' . a:group
  if a:fg != ''
    let l:cmd .= ' guifg=' . a:fg . ' ctermfg=' . s:hex_to_term(a:fg)
  endif
  if a:bg != ''
    let l:cmd .= ' guibg=' . a:bg . ' ctermbg=' . s:hex_to_term(a:bg)
  endif
  if a:attr != ''
    let l:cmd .= ' gui=' . a:attr . ' cterm=' . a:attr
  endif
  execute l:cmd
endfunction

" Editor highlights
call s:hi('Normal', s:fg, s:bg, '')
call s:hi('ColorColumn', '', s:bg, '')
call s:hi('CursorLine', '', s:bg, '')
call s:hi('Directory', s:blue, '', '')
call s:hi('ErrorMsg', s:red, '', '')
call s:hi('LineNr', s:line_number, '', '')
call s:hi('VertSplit', s:line_number, '', '')
call s:hi('Visual', '', s:selection, '')
call s:hi('Search', s:bg, s:yellow, '')
call s:hi('IncSearch', s:bg, s:neon_blue, '')

" Syntax highlighting
call s:hi('Comment', s:comment, '', 'italic')
call s:hi('Constant', s:blue, '', '')
call s:hi('String', s:orange, '', '')
call s:hi('Number', s:light_green, '', '')
call s:hi('Boolean', s:blue, '', '')
call s:hi('Float', s:light_green, '', '')
call s:hi('Identifier', s:light_blue, '', '')
call s:hi('Function', s:yellow, '', '')
call s:hi('Statement', s:pink, '', '')
call s:hi('Conditional', s:pink, '', '')
call s:hi('Repeat', s:pink, '', '')
call s:hi('Keyword', s:pink, '', '')
call s:hi('Type', s:blue, '', '')
call s:hi('Special', s:orange, '', '')
call s:hi('PreProc', s:pink, '', '')
call s:hi('Error', s:red, '', 'undercurl')
call s:hi('Todo', s:orange, '', 'bold')

" Git highlighting (basic support)
call s:hi('DiffAdd', s:neon_green, '', '')
call s:hi('DiffChange', s:neon_blue, '', '')
call s:hi('DiffDelete', s:neon_red, '', '')
call s:hi('GitSignsAdd', s:neon_green, '', '')
call s:hi('GitSignsChange', s:neon_blue, '', '')
call s:hi('GitSignsDelete', s:neon_red, '', '')

" Popup/completion menu
call s:hi('Pmenu', s:fg, '#080808', '')
call s:hi('PmenuSel', s:fg, s:selection, '')

" Diagnostic highlights (basic LSP support)
call s:hi('DiagnosticError', s:neon_red, '', '')
call s:hi('DiagnosticWarn', s:neon_yellow, '', '')
call s:hi('DiagnosticInfo', s:neon_blue, '', '')
call s:hi('DiagnosticHint', s:neon_cyan, '', '')

" Terminal colors (if supported)
if has('terminal')
  let g:terminal_color_0 = s:bg
  let g:terminal_color_1 = s:red
  let g:terminal_color_2 = s:green
  let g:terminal_color_3 = s:yellow
  let g:terminal_color_4 = s:blue
  let g:terminal_color_5 = s:pink
  let g:terminal_color_6 = s:blue_green
  let g:terminal_color_7 = s:line_number
  let g:terminal_color_8 = '#555555'
  let g:terminal_color_9 = s:neon_red
  let g:terminal_color_10 = s:neon_green
  let g:terminal_color_11 = s:neon_yellow
  let g:terminal_color_12 = s:neon_blue
  let g:terminal_color_13 = s:neon_purple
  let g:terminal_color_14 = s:neon_cyan
  let g:terminal_color_15 = s:fg
endif