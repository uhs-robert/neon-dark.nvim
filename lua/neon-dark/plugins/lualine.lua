-- Neon Dark Theme - Lualine Integration
-- Statusline theme with neon mode indicators

local M = {}

function M.get_theme(colors)
  local c = colors
  
  -- Define the lualine theme structure
  local theme = {
    normal = {
      a = { fg = c.bg, bg = c.neon_blue, gui = 'bold' },
      b = { fg = c.fg, bg = c.statusline },
      c = { fg = c.fg, bg = c.bg },
      x = { fg = c.fg, bg = c.bg },
      y = { fg = c.fg, bg = c.statusline },
      z = { fg = c.bg, bg = c.neon_blue, gui = 'bold' },
    },
    
    insert = {
      a = { fg = c.bg, bg = c.neon_green, gui = 'bold' },
      b = { fg = c.fg, bg = c.statusline },
      c = { fg = c.fg, bg = c.bg },
      x = { fg = c.fg, bg = c.bg },
      y = { fg = c.fg, bg = c.statusline },
      z = { fg = c.bg, bg = c.neon_green, gui = 'bold' },
    },
    
    visual = {
      a = { fg = c.bg, bg = c.neon_purple, gui = 'bold' },
      b = { fg = c.fg, bg = c.statusline },
      c = { fg = c.fg, bg = c.bg },
      x = { fg = c.fg, bg = c.bg },
      y = { fg = c.fg, bg = c.statusline },
      z = { fg = c.bg, bg = c.neon_purple, gui = 'bold' },
    },
    
    replace = {
      a = { fg = c.bg, bg = c.neon_red, gui = 'bold' },
      b = { fg = c.fg, bg = c.statusline },
      c = { fg = c.fg, bg = c.bg },
      x = { fg = c.fg, bg = c.bg },
      y = { fg = c.fg, bg = c.statusline },
      z = { fg = c.bg, bg = c.neon_red, gui = 'bold' },
    },
    
    command = {
      a = { fg = c.bg, bg = c.neon_yellow, gui = 'bold' },
      b = { fg = c.fg, bg = c.statusline },
      c = { fg = c.fg, bg = c.bg },
      x = { fg = c.fg, bg = c.bg },
      y = { fg = c.fg, bg = c.statusline },
      z = { fg = c.bg, bg = c.neon_yellow, gui = 'bold' },
    },
    
    terminal = {
      a = { fg = c.bg, bg = c.neon_cyan, gui = 'bold' },
      b = { fg = c.fg, bg = c.statusline },
      c = { fg = c.fg, bg = c.bg },
      x = { fg = c.fg, bg = c.bg },
      y = { fg = c.fg, bg = c.statusline },
      z = { fg = c.bg, bg = c.neon_cyan, gui = 'bold' },
    },
    
    inactive = {
      a = { fg = c.comment, bg = c.statusline_nc },
      b = { fg = c.comment, bg = c.statusline_nc },
      c = { fg = c.comment, bg = c.bg },
      x = { fg = c.comment, bg = c.bg },
      y = { fg = c.comment, bg = c.statusline_nc },
      z = { fg = c.comment, bg = c.statusline_nc },
    },
  }
  
  return theme
end

-- Get highlight groups for lualine components
function M.get_highlights(colors)
  local c = colors

  return {
    -- Basic lualine highlights
    lualine_a_normal = { fg = c.bg, bg = c.neon_blue, bold = true },
    lualine_a_insert = { fg = c.bg, bg = c.neon_green, bold = true },
    lualine_a_visual = { fg = c.bg, bg = c.neon_purple, bold = true },
    lualine_a_replace = { fg = c.bg, bg = c.neon_red, bold = true },
    lualine_a_command = { fg = c.bg, bg = c.neon_yellow, bold = true },
    lualine_a_terminal = { fg = c.bg, bg = c.neon_cyan, bold = true },
    lualine_a_inactive = { fg = c.comment, bg = c.statusline_nc },
    
    lualine_b_normal = { fg = c.fg, bg = c.statusline },
    lualine_b_insert = { fg = c.fg, bg = c.statusline },
    lualine_b_visual = { fg = c.fg, bg = c.statusline },
    lualine_b_replace = { fg = c.fg, bg = c.statusline },
    lualine_b_command = { fg = c.fg, bg = c.statusline },
    lualine_b_terminal = { fg = c.fg, bg = c.statusline },
    lualine_b_inactive = { fg = c.comment, bg = c.statusline_nc },
    
    lualine_c_normal = { fg = c.fg, bg = c.bg },
    lualine_c_insert = { fg = c.fg, bg = c.bg },
    lualine_c_visual = { fg = c.fg, bg = c.bg },
    lualine_c_replace = { fg = c.fg, bg = c.bg },
    lualine_c_command = { fg = c.fg, bg = c.bg },
    lualine_c_terminal = { fg = c.fg, bg = c.bg },
    lualine_c_inactive = { fg = c.comment, bg = c.bg },
    
    -- Component-specific highlights
    lualine_transitional_lualine_a_normal_to_lualine_b_normal = { fg = c.neon_blue, bg = c.statusline },
    lualine_transitional_lualine_a_insert_to_lualine_b_insert = { fg = c.neon_green, bg = c.statusline },
    lualine_transitional_lualine_a_visual_to_lualine_b_visual = { fg = c.neon_purple, bg = c.statusline },
    lualine_transitional_lualine_a_replace_to_lualine_b_replace = { fg = c.neon_red, bg = c.statusline },
    lualine_transitional_lualine_a_command_to_lualine_b_command = { fg = c.neon_yellow, bg = c.statusline },
    lualine_transitional_lualine_a_terminal_to_lualine_b_terminal = { fg = c.neon_cyan, bg = c.statusline },
  }
end

return M