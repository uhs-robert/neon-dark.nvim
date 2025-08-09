-- Neon Dark Theme - LSP Highlights
-- Language Server Protocol highlight groups

local M = {}

function M.get_highlights(colors)
  local c = colors

  return {
    -- LSP diagnostics (using neon colors)
    DiagnosticError = { fg = c.neon_red },
    DiagnosticWarn = { fg = c.neon_yellow },
    DiagnosticInfo = { fg = c.neon_blue },
    DiagnosticHint = { fg = c.neon_cyan },
    DiagnosticOk = { fg = c.neon_green },
    
    -- Diagnostic underlines
    DiagnosticUnderlineError = { undercurl = true, sp = c.neon_red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.neon_yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.neon_blue },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.neon_cyan },
    DiagnosticUnderlineOk = { undercurl = true, sp = c.neon_green },
    
    -- Diagnostic virtual text
    DiagnosticVirtualTextError = { fg = c.neon_red, bg = "NONE" },
    DiagnosticVirtualTextWarn = { fg = c.neon_yellow, bg = "NONE" },
    DiagnosticVirtualTextInfo = { fg = c.neon_blue, bg = "NONE" },
    DiagnosticVirtualTextHint = { fg = c.neon_cyan, bg = "NONE" },
    DiagnosticVirtualTextOk = { fg = c.neon_green, bg = "NONE" },
    
    -- Diagnostic signs (in sign column)
    DiagnosticSignError = { fg = c.neon_red, bg = "NONE" },
    DiagnosticSignWarn = { fg = c.neon_yellow, bg = "NONE" },
    DiagnosticSignInfo = { fg = c.neon_blue, bg = "NONE" },
    DiagnosticSignHint = { fg = c.neon_cyan, bg = "NONE" },
    DiagnosticSignOk = { fg = c.neon_green, bg = "NONE" },
    
    -- Diagnostic floating windows
    DiagnosticFloatingError = { fg = c.neon_red, bg = c.popup_bg },
    DiagnosticFloatingWarn = { fg = c.neon_yellow, bg = c.popup_bg },
    DiagnosticFloatingInfo = { fg = c.neon_blue, bg = c.popup_bg },
    DiagnosticFloatingHint = { fg = c.neon_cyan, bg = c.popup_bg },
    DiagnosticFloatingOk = { fg = c.neon_green, bg = c.popup_bg },
    
    -- LSP semantic token highlights
    ["@lsp.type.class"] = { fg = c.blue_green },
    ["@lsp.type.comment"] = { link = "Comment" },
    ["@lsp.type.decorator"] = { fg = c.neon_purple },
    ["@lsp.type.enum"] = { fg = c.blue_green },
    ["@lsp.type.enumMember"] = { fg = c.light_blue },
    ["@lsp.type.event"] = { fg = c.neon_orange },
    ["@lsp.type.function"] = { link = "Function" },
    ["@lsp.type.interface"] = { fg = c.blue_green },
    ["@lsp.type.keyword"] = { link = "Keyword" },
    ["@lsp.type.macro"] = { fg = c.neon_purple },
    ["@lsp.type.method"] = { link = "Function" },
    ["@lsp.type.modifier"] = { fg = c.pink },
    ["@lsp.type.namespace"] = { fg = c.light_blue },
    ["@lsp.type.number"] = { link = "Number" },
    ["@lsp.type.operator"] = { fg = c.fg },
    ["@lsp.type.parameter"] = { fg = c.light_blue },
    ["@lsp.type.property"] = { fg = c.light_blue },
    ["@lsp.type.regexp"] = { fg = c.neon_orange },
    ["@lsp.type.string"] = { link = "String" },
    ["@lsp.type.struct"] = { fg = c.blue_green },
    ["@lsp.type.type"] = { link = "Type" },
    ["@lsp.type.typeParameter"] = { fg = c.blue_green },
    ["@lsp.type.variable"] = { fg = c.light_blue },
    
    -- LSP reference highlighting
    LspReferenceText = { bg = c.selection },
    LspReferenceRead = { bg = c.selection },
    LspReferenceWrite = { bg = c.selection, bold = true },
    
    -- LSP code lens
    LspCodeLens = { fg = c.comment, italic = true },
    LspCodeLensSeparator = { fg = c.comment },
    
    -- LSP signature help
    LspSignatureActiveParameter = { fg = c.neon_yellow, bold = true },
    
    -- LSP inlay hints
    LspInlayHint = { fg = c.comment, bg = "NONE", italic = true },
  }
end

return M