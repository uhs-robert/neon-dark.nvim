-- Neon Dark Theme - Telescope Highlights
-- Fuzzy finder theming with neon accents

local M = {}

function M.get_highlights(colors)
  local c = colors

  return {
    -- Main telescope window
    TelescopeNormal = { fg = c.fg, bg = c.popup_bg },
    TelescopeBorder = { fg = c.border, bg = c.popup_bg },
    
    -- Prompt (search input)
    TelescopePromptNormal = { fg = c.fg, bg = c.popup_bg },
    TelescopePromptBorder = { fg = c.neon_blue, bg = c.popup_bg },
    TelescopePromptTitle = { fg = c.bg, bg = c.neon_blue, bold = true },
    TelescopePromptPrefix = { fg = c.neon_blue },
    TelescopePromptCounter = { fg = c.comment },
    
    -- Results list
    TelescopeResultsNormal = { fg = c.fg, bg = c.popup_bg },
    TelescopeResultsBorder = { fg = c.border, bg = c.popup_bg },
    TelescopeResultsTitle = { fg = c.bg, bg = c.neon_green, bold = true },
    TelescopeResultsComment = { fg = c.comment },
    TelescopeResultsSpecialComment = { fg = c.neon_cyan },
    TelescopeResultsLineNr = { fg = c.line_number },
    TelescopeResultsIdent = { fg = c.light_blue },
    TelescopeResultsClass = { fg = c.blue_green },
    TelescopeResultsConstant = { fg = c.blue },
    TelescopeResultsField = { fg = c.light_blue },
    TelescopeResultsFunction = { fg = c.yellow },
    TelescopeResultsMethod = { fg = c.yellow },
    TelescopeResultsOperator = { fg = c.fg },
    TelescopeResultsStruct = { fg = c.blue_green },
    TelescopeResultsVariable = { fg = c.light_blue },
    
    -- Preview window
    TelescopePreviewNormal = { fg = c.fg, bg = c.popup_bg },
    TelescopePreviewBorder = { fg = c.border, bg = c.popup_bg },
    TelescopePreviewTitle = { fg = c.bg, bg = c.neon_orange, bold = true },
    TelescopePreviewLine = { bg = c.selection },
    TelescopePreviewMatch = { fg = c.neon_yellow, bg = c.selection, bold = true },
    TelescopePreviewPipe = { fg = c.comment },
    TelescopePreviewCharDev = { fg = c.neon_green },
    TelescopePreviewDirectory = { fg = c.blue, bold = true },
    TelescopePreviewBlock = { fg = c.neon_cyan },
    TelescopePreviewLink = { fg = c.neon_pink },
    TelescopePreviewSocket = { fg = c.neon_purple },
    TelescopePreviewRead = { fg = c.neon_green },
    TelescopePreviewWrite = { fg = c.neon_orange },
    TelescopePreviewExecute = { fg = c.neon_red },
    TelescopePreviewHyphen = { fg = c.comment },
    TelescopePreviewSticky = { fg = c.neon_yellow },
    TelescopePreviewSize = { fg = c.light_blue },
    TelescopePreviewUser = { fg = c.neon_cyan },
    TelescopePreviewGroup = { fg = c.neon_purple },
    TelescopePreviewDate = { fg = c.comment },
    TelescopePreviewMessage = { fg = c.fg },
    TelescopePreviewMessageFillchar = { fg = c.comment },
    
    -- Selection and multi-selection
    TelescopeSelection = { fg = c.fg, bg = c.selection, bold = true },
    TelescopeSelectionCaret = { fg = c.neon_blue, bg = c.selection, bold = true },
    TelescopeMultiSelection = { fg = c.neon_purple, bg = c.selection },
    TelescopeMultiIcon = { fg = c.neon_purple },
    
    -- Matching characters
    TelescopeMatching = { fg = c.neon_yellow, bold = true },
    
    -- File type icons (if using web-devicons)
    TelescopeResultsFileIcon = { fg = c.blue },
    TelescopeResultsDiffAdd = { fg = c.neon_green },
    TelescopeResultsDiffChange = { fg = c.neon_blue },
    TelescopeResultsDiffDelete = { fg = c.neon_red },
    TelescopeResultsDiffUntracked = { fg = c.neon_orange },
  }
end

return M