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
  -- Diffview
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    config = function()
      require("gitsigns").setup()
    end
  },
  -- Diffview
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    lazy = false,
    opts = {},
  },
  -- Diffview
  {
    "sbdchd/neoformat",
    lazy = false
  },
  -- Diffview
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "sindrets/diffview.nvim",        -- optional - Diff integration

    "nvim-telescope/telescope.nvim", -- optional
    },
    config = true
  },
  -- Diffview
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}, -- this is equalent to setup({}) function
  },
  -- Diffview
  {
    "nvim-neotest/nvim-nio"
  },
  -- Diffview
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
  },
  -- Diffview
  {
    'nvim-tree/nvim-web-devicons'
  },
  -- Diffview
  {
    'stevearc/oil.nvim',
    lazy = true,
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  -- Diffview
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    -- optionally, override the default options:
    config = function()
      require("tailwindcss-colorizer-cmp").setup({
        color_square_width = 2,
      })
    end,
  },
  -- Diffview
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  -- Diffview
  {
    "pocco81/true-zen.nvim",
    lazy = false,
  },
  -- Diffview
  {
    lazy = false,
    "tpope/vim-fugitive",
  },
  -- Diffview
  {
    "RRethy/vim-illuminate",
    lazy = false,
    config = function()
      require("illuminate").configure({})
    end,
  },
  -- Diffview
  {
    "folke/which-key.nvim",
    lazy = false,
    opts = {},
  }
}
