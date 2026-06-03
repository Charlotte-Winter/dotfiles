return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      dashboard = {
        enable = true,
        sections = {
          { section = "header" },
          { section = "keys", gab = 1, padding = 1 },
          { section = "startup" },
        },
      },
    },

    keys = {
      { "<leader>d", function() Snacks.dashboard.open() end, desc = "Dashboard Öffnen" },
    },
  },
} 
