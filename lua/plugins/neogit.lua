return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim", -- optional, for diff viewing
  },
  cmd = "Neogit",
  keys = {
    {
      "<leader>gg",
      "<cmd>Neogit<cr>",
      desc = "Open Neogit",
    },
  },
  config = function()
    require("neogit").setup({
      integrations = {
        diffview = true,
      },
      graph_style = "unicode",
      disable_insert_on_commit = "auto",
    })
  end,
}
