  :set number "Нумерация строк
  :set relativenumber "Нумерация относительно курсора вверх и вниз
  :set autoindent
  :set tabstop=4
  :set shiftwidth=4
  :set smarttab
  :set softtabstop=4
  :set mouse=a
  :set encoding=utf-8
  :set spell spelllang=en,ru
  :set keymap=russian-jcukenwin
  :set iminsert=0 " Чтобы при старте ввод был на английском, а не русском (start > i)
  :set imsearch=0 " Чтобы при старте поиск был на английском, а не русском (start > /)
  " Дополнительно можно добавить  Чтобы вместо Ctrl-^ нажимать Ctrl-L
  :inoremap <C-l> <C-^>
  :set clipboard+=unnamed
  :set commentary
  :set history
  :set ignorecase
  :set matchpairs
  :set multiple-cursors
  :set smartcase
  :set surround
  :set wrapscan


" highlightedyank
set highlightedyank
let g:highlightedyank_highlight_duration = 2000

" NERDTree
let g:NERDTreeMapActivateNode = 'l'
let g:NERDTreeMapPreview = '<Nop>'
let g:NERDTreeMapOpenInTab = 'oo'
let g:NERDTreeMapOpenInTabSilent = '<Nop>'
let g:NERDTreeMapOpenSplit = 'ov'
let g:NERDTreeMapPreviewSplit = '<Nop>'
let g:NERDTreeMapOpenVSplit = 'os'
let g:NERDTreeMapPreviewVSplit = '<Nop>'
let g:NERDTreeMapOpenRecursively = '<Nop>'
let g:NERDTreeMapCloseDir = 'h'
let g:NERDTreeMapCloseChildren = '<Nop>'
let g:NERDTreeMapJumpRoot = '<Nop>'
let g:NERDTreeMapJumpParent = 'K'
let g:NERDTreeMapJumpFirstChild = '<Nop>'
let g:NERDTreeMapJumpLastChild = '<Nop>'
let g:NERDTreeMapJumpNextSibling = 'L'
let g:NERDTreeMapJumpPrevSibling = 'H'
let g:NERDTreeMapRefresh = '<Nop>'
let g:NERDTreeMapRefreshRoot = 'gr'
let g:NERDTreeMapMenu = '<Nop>'
" let g:NERDTreeMapQuit = 'q'
let g:NERDTreeMapToggleZoom = '<Nop>'
set NERDTree
