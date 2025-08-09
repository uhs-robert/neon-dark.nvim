-- Neon Dark Theme - Treesitter Highlights
-- Modern syntax highlighting via Treesitter

local M = {}

function M.get_highlights(colors)
  local c = colors

  return {
    -- Identifiers
    ["@variable"] = { fg = c.light_blue },
    ["@variable.builtin"] = { fg = c.blue, italic = true },
    ["@variable.parameter"] = { fg = c.light_blue },
    ["@variable.member"] = { fg = c.light_blue },
    
    ["@constant"] = { fg = c.light_blue },
    ["@constant.builtin"] = { fg = c.blue },
    ["@constant.macro"] = { fg = c.neon_purple },
    
    ["@module"] = { fg = c.light_blue },
    ["@module.builtin"] = { fg = c.blue },
    ["@label"] = { fg = c.pink },
    
    -- Literals
    ["@string"] = { fg = c.orange },
    ["@string.documentation"] = { fg = c.orange, italic = true },
    ["@string.regexp"] = { fg = c.neon_orange },
    ["@string.escape"] = { fg = c.neon_cyan },
    ["@string.special"] = { fg = c.neon_cyan },
    ["@string.special.symbol"] = { fg = c.light_blue },
    ["@string.special.path"] = { fg = c.orange },
    ["@string.special.url"] = { fg = c.blue, underline = true },
    
    ["@character"] = { fg = c.orange },
    ["@character.special"] = { fg = c.neon_cyan },
    
    ["@boolean"] = { fg = c.blue },
    ["@number"] = { fg = c.light_green },
    ["@number.float"] = { fg = c.light_green },
    
    -- Types
    ["@type"] = { fg = c.blue },
    ["@type.builtin"] = { fg = c.blue, italic = true },
    ["@type.definition"] = { fg = c.blue_green },
    
    ["@attribute"] = { fg = c.neon_purple },
    ["@attribute.builtin"] = { fg = c.neon_purple, italic = true },
    ["@property"] = { fg = c.light_blue },
    
    -- Functions
    ["@function"] = { fg = c.yellow },
    ["@function.builtin"] = { fg = c.yellow, italic = true },
    ["@function.call"] = { fg = c.yellow },
    ["@function.macro"] = { fg = c.neon_purple },
    
    ["@function.method"] = { fg = c.yellow },
    ["@function.method.call"] = { fg = c.yellow },
    
    ["@constructor"] = { fg = c.blue_green },
    ["@operator"] = { fg = c.fg },
    
    -- Keywords
    ["@keyword"] = { fg = c.pink },
    ["@keyword.coroutine"] = { fg = c.pink, italic = true },
    ["@keyword.function"] = { fg = c.pink },
    ["@keyword.operator"] = { fg = c.pink },
    ["@keyword.import"] = { fg = c.pink },
    ["@keyword.type"] = { fg = c.pink },
    ["@keyword.modifier"] = { fg = c.pink },
    ["@keyword.repeat"] = { fg = c.pink },
    ["@keyword.return"] = { fg = c.pink, bold = true },
    ["@keyword.debug"] = { fg = c.neon_red },
    ["@keyword.exception"] = { fg = c.pink },
    ["@keyword.conditional"] = { fg = c.pink },
    ["@keyword.conditional.ternary"] = { fg = c.pink },
    ["@keyword.directive"] = { fg = c.neon_purple },
    ["@keyword.directive.define"] = { fg = c.neon_purple },
    
    -- Punctuation
    ["@punctuation.delimiter"] = { fg = c.fg },
    ["@punctuation.bracket"] = { fg = c.fg },
    ["@punctuation.special"] = { fg = c.neon_cyan },
    
    -- Comments
    ["@comment"] = { fg = c.comment, italic = true },
    ["@comment.documentation"] = { fg = c.comment, italic = true },
    ["@comment.error"] = { fg = c.neon_red, bg = "NONE" },
    ["@comment.warning"] = { fg = c.neon_yellow, bg = "NONE" },
    ["@comment.todo"] = { fg = c.neon_blue, bg = "NONE", bold = true },
    ["@comment.note"] = { fg = c.neon_cyan, bg = "NONE" },
    
    -- Markup (Markdown, etc.)
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    
    ["@markup.heading"] = { fg = c.neon_blue, bold = true },
    ["@markup.heading.1"] = { fg = c.neon_blue, bold = true },
    ["@markup.heading.2"] = { fg = c.neon_green, bold = true },
    ["@markup.heading.3"] = { fg = c.neon_yellow, bold = true },
    ["@markup.heading.4"] = { fg = c.neon_orange, bold = true },
    ["@markup.heading.5"] = { fg = c.neon_purple, bold = true },
    ["@markup.heading.6"] = { fg = c.neon_pink, bold = true },
    
    ["@markup.link"] = { fg = c.blue, underline = true },
    ["@markup.link.label"] = { fg = c.light_blue },
    ["@markup.link.url"] = { fg = c.blue, underline = true },
    
    ["@markup.raw"] = { fg = c.orange },
    ["@markup.raw.block"] = { fg = c.orange, bg = c.fold_bg },
    
    ["@markup.list"] = { fg = c.neon_cyan },
    ["@markup.list.checked"] = { fg = c.neon_green },
    ["@markup.list.unchecked"] = { fg = c.comment },
    
    ["@markup.quote"] = { fg = c.comment, italic = true },
    
    -- Diff
    ["@diff.plus"] = { fg = c.neon_green },
    ["@diff.minus"] = { fg = c.neon_red },
    ["@diff.delta"] = { fg = c.neon_blue },
    
    -- Tags (HTML, XML, etc.)
    ["@tag"] = { fg = c.pink },
    ["@tag.builtin"] = { fg = c.pink },
    ["@tag.attribute"] = { fg = c.light_blue },
    ["@tag.delimiter"] = { fg = c.gray },
    
    -- Language-specific
    -- CSS
    ["@property.css"] = { fg = c.light_blue },
    ["@type.css"] = { fg = c.orange },
    
    -- JavaScript/TypeScript
    ["@constructor.javascript"] = { fg = c.yellow },
    ["@constructor.typescript"] = { fg = c.yellow },
    
    -- Python
    ["@variable.builtin.python"] = { fg = c.pink, italic = true },
    
    -- Lua
    ["@constructor.lua"] = { fg = c.fg },
    
    -- Git
    ["@keyword.gitcommit"] = { fg = c.neon_blue },
    ["@markup.heading.gitcommit"] = { fg = c.neon_green, bold = true },
  }
end

return M