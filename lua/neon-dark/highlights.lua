-- Neon Dark Theme - Highlight Groups
-- Plugin-specific highlight groups for the neon-dark theme

local M = {}

-- Get plugin highlights based on color palette
function M.get_highlights(colors)
  local c = colors

  return {
    -- Git Signs (with neon colors)
    GitSignsAdd = { fg = c.neon_green, bg = "None" },
    GitSignsChange = { fg = c.neon_blue, bg = "None" },
    GitSignsDelete = { fg = c.neon_red, bg = "None" },
    GitSignsAddLn = { fg = c.bg, bg = c.neon_green },
    GitSignsChangeLn = { fg = c.bg, bg = c.neon_blue },
    GitSignsDeleteLn = { fg = c.bg, bg = c.neon_red },

    -- Dashboard/Snacks
    SnacksDashboardHeader = { fg = c.medium_blue, bg = c.none },
    SnacksDashboardTitle = { fg = c.medium_blue, bg = c.none, bold = true },
    SnacksDashboardDesc = { fg = c.blue_green, bg = c.none },
    SnacksDashboardFile = { fg = c.blue, bg = c.none },
    BrandLink = { fg = c.blue_green, bg = c.none },
    SnacksDashboardFooter = { fg = c.blue, bg = c.none },
    SnacksDashboardKey = { fg = c.orange, bg = c.none },

    -- Lazy.nvim
    LazyButton = { fg = c.fg, bg = "#0979C9", bold = true },
    LazyH1 = { fg = c.fg, bg = c.green, bold = true },

    -- Git status colors
    Added = { fg = c.neon_green, bg = c.none },
    Changed = { fg = c.neon_blue, bg = c.none },
    Removed = { fg = c.neon_red, bg = c.none },

    -- Enhanced Diagnostics (using neon colors)
    DiagnosticError = { fg = c.neon_red, bg = c.none },
    DiagnosticWarn = { fg = c.neon_yellow, bg = c.none },
    DiagnosticInfo = { fg = c.neon_blue, bg = c.none },
    DiagnosticHint = { fg = c.neon_cyan, bg = c.none },

    -- LazyGit integration
    lazyActiveBorder = { fg = c.neon_green },
    lazyCherryBg = { fg = c.neon_blue },
    lazyCherryFg = { fg = c.neon_yellow },
    lazyOptionsText = { fg = c.neon_blue },
    lazyUnstagedChanges = { fg = c.neon_red },

    -- Render Markdown Headings (neon-themed)
    MarkdownHeadlineH1 = { bg = "#1c3d5a", fg = c.neon_blue, bold = true },
    MarkdownHeadlineH2 = { bg = "#5a3e22", fg = c.neon_orange, bold = true },
    MarkdownHeadlineH3 = { bg = "#665c1e", fg = c.neon_yellow, bold = true },
    MarkdownHeadlineH4 = { bg = "#234c3a", fg = c.neon_green, bold = true },
    MarkdownHeadlineH5 = { bg = "#274e54", fg = c.neon_cyan, bold = true },
    MarkdownHeadlineH6 = { bg = "#4e2a4e", fg = c.neon_pink, bold = true },

    -- Telescope (popular fuzzy finder)
    TelescopeNormal = { bg = c.popup_bg, fg = c.fg },
    TelescopeBorder = { fg = c.border, bg = c.popup_bg },
    TelescopePromptNormal = { bg = c.popup_bg },
    TelescopePromptBorder = { fg = c.border, bg = c.popup_bg },
    TelescopePromptTitle = { fg = c.neon_blue, bg = c.popup_bg, bold = true },
    TelescopePreviewTitle = { fg = c.neon_green, bg = c.popup_bg, bold = true },
    TelescopeResultsTitle = { fg = c.neon_orange, bg = c.popup_bg, bold = true },
    TelescopeSelection = { fg = c.fg, bg = c.selection },
    TelescopeSelectionCaret = { fg = c.neon_blue, bg = c.selection },
    TelescopeMultiSelection = { fg = c.neon_purple, bg = c.selection },

    -- nvim-tree / oil.nvim
    NvimTreeFolderName = { fg = c.blue },
    NvimTreeFolderIcon = { fg = c.blue },
    NvimTreeOpenedFolderName = { fg = c.light_blue, bold = true },
    NvimTreeEmptyFolderName = { fg = c.gray },
    NvimTreeIndentMarker = { fg = c.line_number },
    NvimTreeVertSplit = { fg = c.border, bg = c.bg },
    NvimTreeRootFolder = { fg = c.neon_green, bold = true },
    NvimTreeGitDirty = { fg = c.neon_orange },
    NvimTreeGitNew = { fg = c.neon_green },
    NvimTreeGitDeleted = { fg = c.neon_red },
    NvimTreeSpecialFile = { fg = c.neon_purple, underline = true },
    NvimTreeExecutable = { fg = c.neon_green },
    NvimTreeImageFile = { fg = c.neon_pink },

    -- Lualine (statusline)
    lualine_a_normal = { fg = c.bg, bg = c.neon_blue, bold = true },
    lualine_a_insert = { fg = c.bg, bg = c.neon_green, bold = true },
    lualine_a_visual = { fg = c.bg, bg = c.neon_purple, bold = true },
    lualine_a_replace = { fg = c.bg, bg = c.neon_red, bold = true },
    lualine_a_command = { fg = c.bg, bg = c.neon_yellow, bold = true },
    lualine_b_normal = { fg = c.fg, bg = c.statusline },
    lualine_c_normal = { fg = c.fg, bg = c.bg },
  }
end

-- Legacy compatibility for the old interface
function M.setup(colors)
  M.group_overrides = {}
  M.extended_highlights = M.get_highlights(colors)
  return M
end

return M