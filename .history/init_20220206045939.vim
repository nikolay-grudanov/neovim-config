
if exists('g.vscode')
  " VS Code
  source /home/grudanov/.config/nvim/vscode/setting.vim
  source /home/grudanov/.config/nvim/vscode/key-map.vim
else

  :set number "Нумерация строк
  :set relativenumber "Нумерация отностительно курсора вверх и вниз
  :set autoindent
  :set tabstop=4
  :set shiftwidth=4
  :set smarttab
  :set softtabstop=4
  :set mouse=a
  :set encoding=utf-8

  " function! Cond(Cond, ...)
  "  let opts = get(a:000, 0, {})
  "  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
  " endfunction

  call plug#begin()

  Plug 'https://github.com/vim-airline/vim-airline')
  Plug 'https://github.com/preservim/nerdcommenter'
  Plug 'https://github.com/preservim/nerdtree'
  Plug 'https://github.com/ryanoasis/vim-devicons'
  "Plug 'https://github.com/tc50cal/vim-terminal'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'https://github.com/vimcolorschemes/vimcolorschemes'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'easymotion/vim-easymotion'
  " Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })
  Plug 'mattn/emmet-vim'
  Plug 'mogelbrod/vim-jsonpath'
  Plug 'puremourning/vimspector'
  Plug 'szw/vim-maximizer'
  Plug 'actionshrimp/vim-xpath'
  Plug 'windwp/nvim-autopairs'

  call plug#end()

  colorscheme dracula
  let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
  "let g:skip_xpath = 1
  "let g:python3_host_prog = '/home/grudanov/miniconda3'

  nnoremap <space>e :NERDTree<CR>
  nnoremap <C-b> :NERDTree<CR>
  nnoremap <space>e :NERDTreeToggle<CR>
  nnoremap <C-b> :NERDTreeToggle<CR>
  nnoremap <space>w :w<CR>
  nnoremap <C-w> :w<CR>
  nnoremap <space>q :q<CR>
  nnoremap <C-q> :q<CR>
  nnoremap <C-n> :tabnew

  " trn off search highlight
  nnoremap ,<space> :nohlsearch<CR>



  lua << EOF
  -- Set completeopt to have a better completion experience
  vim.o.completeopt = 'menuone,noselect'

  -- luasnip setup
  local luasnip = require 'luasnip'

  -- nvim-cmp setup
  local cmp = require 'cmp'
  cmp.setup {
    completion = {
      autocomplete = false
    },
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = {
      ['<C-p>'] = cmp.mapping.select_prev_item(),
      ['<C-n>'] = cmp.mapping.select_next_item(),
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      },
      ['<Tab>'] = function(fallback)
        if vim.fn.pumvisible() == 1 then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-n>', true, true, true), 'n')
        elseif luasnip.expand_or_jumpable() then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
        else
          fallback()
        end
      end,
      ['<S-Tab>'] = function(fallback)
        if vim.fn.pumvisible() == 1 then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-p>', true, true, true), 'n')
        elseif luasnip.jumpable(-1) then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
        else
          fallback()
        end
      end,
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
    },
  }
  EOF




  lua << EOF
  local nvim_lsp = require('lspconfig')

  -- Use an on_attach function to only map the following keys
  -- after the language server attaches to the current buffer
  local on_attach = function(client, bufnr)

    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

  end

  -- Use a loop to conveniently call 'setup' on multiple servers and
  -- map buffer local keybindings when the language server attaches
  local servers = { 'pyright', 'rust_analyzer' }
  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
      on_attach = on_attach,
      flags = {
        debounce_text_changes = 150,
      }
    }
  end
  EOF



  " Delete buffer while keeping window layout (don't close buffer's windows).
  " Version 2008-11-18 from http://vim.wikia.com/wiki/VimTip165
  if v:version < 700 || exists('loaded_bclose') || &cp
    finish
  endif
  let loaded_bclose = 1
  if !exists('bclose_multiple')
    let bclose_multiple = 1
  endif

  " Display an error message.
  function! s:Warn(msg)
    echohl ErrorMsg
    echomsg a:msg
    echohl NONE
  endfunction

  " Command ':Bclose' executes ':bd' to delete buffer in current window.
  " The window will show the alternate buffer (Ctrl-^) if it exists,
  " or the previous buffer (:bp), or a blank buffer if no previous.
  " Command ':Bclose!' is the same, but executes ':bd!' (discard changes).
  " An optional argument can specify which buffer to close (name or number).
  function! s:Bclose(bang, buffer)
    if empty(a:buffer)
      let btarget = bufnr('%')
    elseif a:buffer =~ '^\d\+$'
      let btarget = bufnr(str2nr(a:buffer))
    else
      let btarget = bufnr(a:buffer)
    endif
    if btarget < 0
      call s:Warn('No matching buffer for '.a:buffer)
      return
    endif
    if empty(a:bang) && getbufvar(btarget, '&modified')
      call s:Warn('No write since last change for buffer '.btarget.' (use :Bclose!)')
      return
    endif
    " Numbers of windows that view target buffer which we will delete.
    let wnums = filter(range(1, winnr('$')), 'winbufnr(v:val) == btarget')
    if !g:bclose_multiple && len(wnums) > 1
      call s:Warn('Buffer is in multiple windows (use ":let bclose_multiple=1")')
      return
    endif
    let wcurrent = winnr()
    for w in wnums
      execute w.'wincmd w'
      let prevbuf = bufnr('#')
      if prevbuf > 0 && buflisted(prevbuf) && prevbuf != btarget
        buffer #
      else
        bprevious
      endif
      if btarget == bufnr('%')
        " Numbers of listed buffers which are not the target to be deleted.
        let blisted = filter(range(1, bufnr('$')), 'buflisted(v:val) && v:val != btarget')
        " Listed, not target, and not displayed.
        let bhidden = filter(copy(blisted), 'bufwinnr(v:val) < 0')
        " Take the first buffer, if any (could be more intelligent).
        let bjump = (bhidden + blisted + [-1])[0]
        if bjump > 0
          execute 'buffer '.bjump
        else
          execute 'enew'.a:bang
        endif
      endif
    endfor
    execute 'bdelete'.a:bang.' '.btarget
    execute wcurrent.'wincmd w'
  endfunction
  command! -bang -complete=buffer -nargs=? Bclose call <SID>Bclose(<q-bang>, <q-args>)
  nnoremap <silent> <Leader>bd :Bclose<CR>


  map gn :bn<cr>
  map gp :bp<cr>
  map gw :Bclose<cr>u

end