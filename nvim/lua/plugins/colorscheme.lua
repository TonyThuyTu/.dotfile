return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  --#cyberdream
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  --#kagawa theme
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    enabled = true,
    priority = 1000,
    opts = {
      compile = true,
      undercurl = true,
      functionStyle = { bold = true, italic = true },
      dimInactive = true,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      -- transparent = false,
      theme = "wave",
      background = {
        dark = "wave",
        light = "lotus",
      },
    },
  },
}
