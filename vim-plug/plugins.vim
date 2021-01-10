" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Easymotion
    Plug 'easymotion/vim-easymotion'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Floaterm
    Plug 'voldikss/vim-floaterm'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " COC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Theme
    Plug 'joshdick/onedark.vim'
    " Better tabline
    Plug 'romgrk/barbar.nvim'
    " Cool Icons
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    " Status Line
    Plug 'vim-airline/vim-airline'
    " Text Navigation
    Plug 'unblevable/quick-scope'
    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Markdown
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    " Elixir
    Plug 'elixir-editors/vim-elixir'
    " HTTP Client
    Plug 'nicwest/vim-http'
    " StyledComponents
    Plug 'styled-components/vim-styled-components'
    " Closetag
    Plug 'alvan/vim-closetag'
    call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
