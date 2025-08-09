-- Neon Dark Theme - Terminal Colors
-- Custom terminal color configuration with neon theme integration

local M = {}

function M.setup(colors)
  colors = colors or require("neon-dark.colors").get_colors()
  
  -- Use theme colors for terminal, with neon accents
  vim.g.terminal_color_0 = colors.bg -- Black
  vim.g.terminal_color_8 = colors.gray -- Bright Black

  vim.g.terminal_color_1 = colors.red -- Red
  vim.g.terminal_color_9 = colors.neon_red -- Bright Red (neon)

  vim.g.terminal_color_2 = colors.green -- Green
  vim.g.terminal_color_10 = colors.neon_green -- Bright Green (neon)

  vim.g.terminal_color_3 = colors.yellow -- Yellow
  vim.g.terminal_color_11 = colors.neon_yellow -- Bright Yellow (neon)

  vim.g.terminal_color_4 = colors.blue -- Blue
  vim.g.terminal_color_12 = colors.neon_blue -- Bright Blue (neon)

  vim.g.terminal_color_5 = colors.pink -- Magenta
  vim.g.terminal_color_13 = colors.neon_purple -- Bright Magenta (neon)

  vim.g.terminal_color_6 = colors.blue_green -- Cyan
  vim.g.terminal_color_14 = colors.neon_cyan -- Bright Cyan (neon)

  vim.g.terminal_color_7 = colors.line_number -- White
  vim.g.terminal_color_15 = colors.fg -- Bright White
end

return M