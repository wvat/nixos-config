require'nvim-treesitter.configs'.setup {
  -- Indentation
  indent = {
      enable = true,
  },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
          ["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
          ["i="] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
          ["l="] = { query = "@assignment.lhs", desc = "Select lhs of an assignment" },
          ["r="] = { query = "@assignment.rhs", desc = "Select rhs of an assignment" },

          ["aa"] = { query = "@assignment.outer", desc = "Select outer part of a parameter/arg" },
          ["ia"] = { query = "@assignment.inner", desc = "Select inner part of a parameter/arg" },

          ["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
          ["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },

          ["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
          ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },

          ["af"] = { query = "@call.outer", desc = "Select outer part of a call" },
          ["if"] = { query = "@call.inner", desc = "Select inner part of a call" },

          ["am"] = { query = "@function.outer", desc = "Select outer part of a function" },
          ["im"] = { query = "@function.inner", desc = "Select inner part of a function" },

          ["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
          ["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
      },
    },

    swap = {
        enable = true,
        swap_next = {
            ["<leader>na"] = "@parameter.inner",
            ["<leader>nm"] = "@function.outer",
        },
        swap_previous = {
            ["<leader>pa"] = "@parameter.inner",
            ["<leader>pm"] = "@function.outer",
        }
    },

    lsp_interop = {
      enable = true,
      border = 'rounded',
      floating_preview_opts = {},
      peek_definition_code = {
        ["<leader>df"] = "@function.outer",
        ["<leader>dF"] = "@class.outer",
      },
    },
  },
}

