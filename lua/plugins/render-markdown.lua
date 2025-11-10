return {
  "MeanderingProgrammer/render-markdown.nvim", -- enabled = false,
  config = function()
    require("render-markdown").setup({
      heading = {
        enabled = true,
        render_modes = false,
        atx = true,
        setext = true,
        sign = false,
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
        position = "overlay",
        signs = { "󰫎 " },
        width = "block",
        left_margin = 0,
        left_pad = 0,
        right_pad = 0,
        min_width = 80,
        border = false,
        border_virtual = false,
        border_prefix = false,
        above = "▄",
        below = "▀",
        backgrounds = {
          "RenderMarkdownH1Bg",
          "RenderMarkdownH2Bg",
          "RenderMarkdownH3Bg",
          "RenderMarkdownH4Bg",
          "RenderMarkdownH5Bg",
          "RenderMarkdownH6Bg",
        },
        foregrounds = {
          "RenderMarkdownH1",
          "RenderMarkdownH2",
          "RenderMarkdownH3",
          "RenderMarkdownH4",
          "RenderMarkdownH5",
          "RenderMarkdownH6",
        },
        custom = {},
      },
      indent = {
        enabled = true,
        icon = "",
      },
    })
  end,
}
