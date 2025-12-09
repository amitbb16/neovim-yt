-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("catppuccin").setup({
-- 			-- flavour = "latte",
-- 			color_overrides = {
-- 				mocha = {
-- 					-- base = "#181825", -- very dark purple
-- 					-- mantle = "#181825"
-- 					-- base = "#1e1e2e", -- light dark purple
-- 					-- mantle = "#1e1e2e"
-- 					base = "#1b1f20", -- gray black
-- 					mantle = "#1b1f20",
-- 					-- base = "#090d17",
-- 					-- mantle = "#090d17"
-- 				},
-- 			},
-- 		})
-- 		vim.cmd.colorscheme("catppuccin")
-- 	end,
-- -- }

-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("catppuccin").setup({
-- 			flavour = "latte", -- 👈 Light theme
-- 			color_overrides = {
-- 				latte = {
-- 					blue = "#8c6d00",   -- replace default blue with warm amber
-- 					sapphire = "#7f5f00",
-- 					sky = "#7f5f00",
-- 					lavender = "#885e00",
-- 				},
-- 			},
-- 		})
-- 		vim.cmd.colorscheme("catppuccin")
-- 	end,
-- }

return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
    vim.o.background = "light"
      vim.g.gruvbox_material_background = "hard" -- hard, soft, medium
      vim.g.gruvbox_material_foreground = "original" -- original, mix, material
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_sign_column_background = 'none'

      grpid = vim.api.nvim_create_augroup('custom_highlights_gruvboxmaterial', {})
      vim.api.nvim_create_autocmd('ColorScheme', {
        group = grpid,
        pattern = 'gruvbox-material',
        command =
          'hi NvimTreeNormal                     guibg=#181818 |' ..
          'hi NvimTreeEndOfBuffer                guibg=#181818 |' ..
          'hi NoiceCmdlinePopupBorderCmdline     guifg=#ea6962 guibg=#282828 |' ..
          'hi TelescopePromptBorder              guifg=#ea6962 guibg=#282828 |' ..
          'hi TelescopePromptNormal              guifg=#ea6962 guibg=#282828 |' ..
          'hi TelescopePromptTitle               guifg=#ea6962 guibg=#282828 |' ..
          'hi TelescopePromptPrefix              guifg=#ea6962 guibg=#282828 |' ..
          'hi TelescopePromptCounter             guifg=#ea6962 guibg=#282828 |' ..
          'hi TelescopePreviewTitle              guifg=#89b482 guibg=#282828 |' ..
          'hi TelescopePreviewBorder             guifg=#89b482 guibg=#282828 |' ..
          'hi TelescopeResultsTitle              guifg=#89b482 guibg=#282828 |' ..
          'hi TelescopeResultsBorder             guifg=#89b482 guibg=#282828 |' ..
          'hi TelescopeMatching                  guifg=#d8a657 guibg=#282828 |' ..
          'hi TelescopeSelection                 guifg=#ffffff guibg=#32302f |' ..
          'hi FloatBorder                        guifg=#ea6962 guibg=#282828 |' ..
          'hi BqfPreviewBorder                   guifg=#ea6962 guibg=#282828 |' ..
          'hi NormalFloat                        guibg=#282828 |' ..
          'hi IndentBlanklineContextChar         guifg=#d3869b |' ..
          'hi StatusColumnBorder                 guifg=#232323 |' ..
          'hi StatusColumnBuffer                 guibg=#282828 |' ..
          'hi CursorLineNr                       guifg=#d8a657 |' ..
          'hi CodewindowBorder                   guifg=#ea6962 |' ..
          'hi TabLineFill                        guibg=#e9e5dc guifg=#928374 |' ..
          'hi TabLineSel                         guibg=#3c3836 guifg=#f9f5d7 gui=bold |' ..
          'hi TabLine                            guibg=#d5c9b8 guifg=#665c54 |'
      })
      vim.cmd'colorscheme gruvbox-material'
    end,
  }
}