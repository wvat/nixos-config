-- Hint: use `:h <option>` to figure out the meaning if needed
vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim

-- Tab
vim.opt.tabstop = 4                 -- number of visual spaces per TAB
vim.opt.softtabstop = 4             -- number of spacesin tab when editing
vim.opt.shiftwidth = 4              -- insert 4 spaces on a tab
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python

-- UI config
vim.opt.wrap = true
vim.opt.number = true               -- show absolute number
vim.opt.relativenumber = true-- add numbers to each line on the left side
vim.opt.cursorline = false -- highlight cursor line underneath the cursor horizontally
vim.opt.cursorcolumn = false
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true           -- open new horizontal splits right
-- vim.opt.termguicolors = true        -- enabl 24-bit RGB color in the TUI

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = false             -- do highlight matches
vim.opt.incsearch = true
vim.opt.ignorecase = true           -- ignore case in searches by default

-- Airline settings
vim.g.airline_powerline_fonts = 1

-- Undo Stuff
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Theme
vim.cmd([[colorscheme catppuccin-latte]])
--vim.cmd([[colorscheme eldar]])
--vim.cmd([[colorscheme tokyonight-storm]])

-- vimtex settings
vim.cmd [[filetype plugin on]]
vim.g.vimtex_view_method = 'zathura'  -- Change 'skkim' to your preferred PDF viewer
vim.g.vimtex_compiler_progname = 'nvr' -- Needed for callback to work in NeoVim
vim.g.vimtex_quickfix_mode = 0 -- Change quickfix behaviorim.cmd([[colorscheme dracula]])
vim.g.vimtex_compiler_latexmk = {
  build_dir = 'build',
  continuous = 1,
  callback = 1,
  view = 1,
  options = {
    '-lualatex',
    '-verbose',
    '-file-line-error',
    '-synctex=1',
    '-interaction=nonstopmode',
  },
}

-- Function to check and create build directory
function CreateBuildDir()
  local build_dir = vim.fn.expand('%:p:h') .. '/build'
  if vim.fn.isdirectory(build_dir) == 0 then
    vim.fn.mkdir(build_dir, 'p')
  end
end

-- Autocommand to create build directory on first run of VimtexCompile
vim.cmd [[
  augroup vimtex_config
    autocmd!
    autocmd User VimtexEventCompilePre lua CreateBuildDir()
  augroup END
]]

-- Additional settings can be added hereim.opt.smartcase = true
