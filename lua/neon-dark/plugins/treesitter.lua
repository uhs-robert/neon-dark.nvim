-- Neon Dark Theme - Treesitter Highlights
-- Neon-specific enhancements over the VSCode base theme
-- Core @-style treesitter highlights are handled in theme.lua

local M = {}

function M.get_highlights(colors)
  local c = colors

  -- Return only neon-specific overrides that enhance the VSCode base theme
  -- The core @-style treesitter highlights are now handled in theme.lua
  return {
    -- Enhanced neon comment highlights (override base theme)
    ["@comment.error"] = { fg = c.neon_red, bg = "NONE" },
    ["@comment.warning"] = { fg = c.neon_yellow, bg = "NONE" },
    ["@comment.todo"] = { fg = c.neon_blue, bg = "NONE", bold = true },
    ["@comment.note"] = { fg = c.neon_cyan, bg = "NONE" },
    
    -- Neon markup/markdown heading overrides
    ["@markup.heading.1"] = { fg = c.neon_blue, bold = true },
    ["@markup.heading.2"] = { fg = c.neon_green, bold = true },
    ["@markup.heading.3"] = { fg = c.neon_yellow, bold = true },
    ["@markup.heading.4"] = { fg = c.neon_orange, bold = true },
    ["@markup.heading.5"] = { fg = c.neon_purple, bold = true },
    ["@markup.heading.6"] = { fg = c.neon_pink, bold = true },
    
    -- Enhanced string highlighting for regexes and special strings
    ["@string.regexp"] = { fg = c.neon_orange },
    ["@string.escape"] = { fg = c.neon_cyan },
    ["@string.special"] = { fg = c.neon_cyan },
    ["@character.special"] = { fg = c.neon_cyan },
    
    -- Enhanced function macros with neon accent
    ["@function.macro"] = { fg = c.neon_purple },
    
    -- Enhanced keyword debugging with neon red
    ["@keyword.debug"] = { fg = c.neon_red },
    ["@keyword.directive"] = { fg = c.neon_purple },
    ["@keyword.directive.define"] = { fg = c.neon_purple },
    
    -- Enhanced diff highlighting with neon colors
    ["@diff.plus"] = { fg = c.neon_green },
    ["@diff.minus"] = { fg = c.neon_red },
    ["@diff.delta"] = { fg = c.neon_blue },
    
    -- Enhanced markup lists with neon colors
    ["@markup.list"] = { fg = c.neon_cyan },
    ["@markup.list.checked"] = { fg = c.neon_green },
    ["@markup.list.unchecked"] = { fg = c.comment },
    
    -- Git-specific neon enhancements
    ["@keyword.gitcommit"] = { fg = c.neon_blue },
    ["@markup.heading.gitcommit"] = { fg = c.neon_green, bold = true },
  }
end

return M