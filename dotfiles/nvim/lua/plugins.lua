local function setup_vim_plug()
  -- Define plugins
  vim.cmd [[
    call plug#begin('~/.local/share/nvim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'agude/vim-eldar'
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    Plug 'folke/tokyonight.nvim'
    Plug 'nvim-lua/plenary.nvim'   
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'lervag/vimtex'
    Plug 'ThePrimeagen/harpoon', {'branch' : 'harpoon2'}
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-fugitive'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-context' 
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-nvim-lua'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'rafamadriz/friendly-snippets'
    Plug 'VonHeikemen/lsp-zero.nvim'
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'github/copilot.vim'
    call plug#end()
  ]]
end

setup_vim_plug()
