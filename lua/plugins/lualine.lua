return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto", -- or "gruvbox-material" / "catppuccin" etc.
        icons_enabled = false, -- disable special icons (break on Windows)
        section_separators = { left = "", right = "" }, -- simple look
        component_separators = { left = "|", right = "|" },
      },
      sections = {
        lualine_a = {
          { 'mode', right_padding = 1 },
        },
        lualine_b = { 'branch', 'filename' },
        lualine_c = { 'fileformat' },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = { 'location' },
      },
    })
  end,
}
