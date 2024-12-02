return {
  "ngtuonghy/live-server-nvim",
  event = "VeryLazy",
  build = ":LiveServerInstall",
  config = function()
    require("live-server-nvim").setup({
      custom = {
        "--port=8080",
        "--no-css-inject",
      },
    })
  end,
}
