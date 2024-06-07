return {
  -- Neocong
	{
    "folke/neoconf.nvim",
    cmd = "Neoconf"
  },
  -- Neodev
  {
	  "folke/neodev.nvim",
  },
  -- Comment
  {
	  "numToStr/Comment.nvim",
    opts = {
      toggler = {
        line = "gtc",
        block = "gtb",
      },
      opleader = {
        line = "goc",
        block = "gob",
      },
    },
    lazy = false,
  },
  -- Diffview
  {
    "sindrets/diffview.nvim",
    lazy = false,
  },
  -- Gitsign
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    config = function()
      require("gitsigns").setup()
    end
  },
  -- Blankline
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    lazy = false,
    opts = {},
  },
  -- Neoformat
  {
    "sbdchd/neoformat",
    lazy = false
  },
  -- Neogit
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "sindrets/diffview.nvim",        -- optional - Diff integration

    "nvim-telescope/telescope.nvim", -- optional
    },
    config = true
  },
  -- Autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}, -- this is equalent to setup({}) function
  },
  -- Nio
  {
    "nvim-neotest/nvim-nio"
  },
  -- TS Autotag
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
  },
  -- Web Devicons
  {
    'nvim-tree/nvim-web-devicons'
  },
  -- Oil
  {
    'stevearc/oil.nvim',
    lazy = true,
    opts = {
            default_file_explorere = true
        },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  -- Tailwindcss Colorizer
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    -- optionally, override the default options:
    config = function()
      require("tailwindcss-colorizer-cmp").setup({
        color_square_width = 2,
      })
    end,
  },
  -- Tmux Navigator
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  -- True Zen
  {
    "pocco81/true-zen.nvim",
    lazy = false,
  },
  -- Fugitive
  {
    lazy = false,
    "tpope/vim-fugitive",
  },
  -- Illuminate
  {
    "RRethy/vim-illuminate",
    lazy = false,
    config = function()
      require("illuminate").configure({})
    end,
  },
  -- Which Key
  {
    "folke/which-key.nvim",
    lazy = false,
    opts = {},
  },
  -- JDT LS
  {
    "mfussenegger/nvim-jdtls",
  },
  {
    "f-person/git-blame.nvim",
  },
  {
    "mg979/vim-visual-multi",
  },
  {
    "hrsh7th/cmp-buffer",
  },
  {
    "hrsh7th/cmp-path",
  },
  {
    "hrsh7th/cmp-cmdline",
  },
  {
    "hrsh7th/nvim-cmp",
  },
  {
    "hrsh7th/cmp-vsnip",
  },
  {
    "hrsh7th/vim-vsnip",
  },
  {
    "hrsh7th/vim-vsnip-integ",
  },
  {
    "rafamadriz/friendly-snippets"
  },
  {
    "preservim/tagbar"
  },
  {
    "yegappan/taglist"
  },
  {
    'akinsho/bufferline.nvim',
    lazy = false,
    config = function()
      vim.opt.termguicolors = true
        require("bufferline").setup{
          options = {
            offsets = {{ filetype = 'NvimTree', text = '', padding = 1}}
          }
        }
    end,
    version = "4.6.1",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "isak102/telescope-git-file-history.nvim",
        dependencies = { "tpope/vim-fugitive" }
      }
    }
  }
}
