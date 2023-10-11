local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls"
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "tpope/vim-fugitive",
     opt = true,
     cmd = {
       "G", "Git", "Gdiffsplit", "Gvdiffsplit", "Gedit", "Gsplit",
       "Gread", "Gwrite", "Ggrep", "Glgrep", "Gmove",
       "Gdelete", "Gremove", "Gbrowse",
     },
  },
}
return plugins
