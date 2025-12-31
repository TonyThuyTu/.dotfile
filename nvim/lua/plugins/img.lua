return {
  "folke/snacks.nvim",
  opts = {
    image = {
      enabled = true, -- Enables inline image rendering
      -- Optional: Configure styles and behavior
      styles = {
        -- Example: display image at the top right corner
        image = {
          priority = 100,
          position = "topright",
          padding = {
            top = 1,
            right = 1,
            bottom = 1,
            left = 1,
          },
        },
      },
    },
  },
}
