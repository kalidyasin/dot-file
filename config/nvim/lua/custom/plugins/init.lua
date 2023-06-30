-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Neotree related plugins
  {
  'nvim-neo-tree/neo-tree.nvim',
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<leader>nn", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
      { "<leader>nl", "<cmd>NeoTreeFocusToggle<cr>", desc = "NeoTree Leftside" },
      { "<leader>nf", "<cmd>NeoTreeFloatToggle<cr>", desc = "NeoTree Float" },

    },
    opts = {},
  },

    -- REST.nvim related plugins
  {
    'rest-nvim/rest.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function ()
      require('plugins/rest')
    end
  },


  {
    -- Auto Pairs 
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },


}

