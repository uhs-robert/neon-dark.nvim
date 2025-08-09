-- Neon Dark Theme - Core Theme Engine
-- Standalone implementation without VSCode dependency

local M = {}

-- Apply all highlight groups for the theme
function M.apply_highlights(colors)
    local hl = vim.api.nvim_set_hl
    local isDark = vim.o.background == 'dark'

    -- Editor highlights
    hl(0, 'Normal', { fg = colors.fg, bg = colors.bg })
    hl(0, 'ColorColumn', { fg = 'NONE', bg = colors.bg })
    hl(0, 'Cursor', { fg = colors.bg, bg = colors.fg })
    hl(0, 'CursorLine', { bg = colors.bg })
    hl(0, 'CursorColumn', { fg = 'NONE', bg = colors.bg })
    hl(0, 'Directory', { fg = colors.blue, bg = colors.bg })
    hl(0, 'DiffAdd', { fg = 'NONE', bg = colors.diff_add })
    hl(0, 'DiffChange', { fg = 'NONE', bg = colors.diff_change })
    hl(0, 'DiffDelete', { fg = 'NONE', bg = colors.diff_delete })
    hl(0, 'DiffText', { fg = 'NONE', bg = colors.diff_text })
    hl(0, 'EndOfBuffer', { fg = colors.bg, bg = 'NONE' })
    hl(0, 'ErrorMsg', { fg = colors.red, bg = colors.bg })
    hl(0, 'VertSplit', { fg = colors.border, bg = colors.bg })
    hl(0, 'WinSeparator', { link = 'VertSplit' })
    hl(0, 'Folded', { fg = colors.comment, bg = colors.fold_bg })
    hl(0, 'FoldColumn', { fg = colors.line_number, bg = colors.bg })
    hl(0, 'SignColumn', { fg = 'NONE', bg = colors.bg })
    hl(0, 'IncSearch', { fg = colors.bg, bg = colors.search_current })
    hl(0, 'LineNr', { fg = colors.line_number, bg = colors.bg })
    hl(0, 'CursorLineNr', { fg = colors.fg, bg = colors.bg })
    hl(0, 'MatchParen', { fg = colors.bg, bg = colors.match_paren })
    hl(0, 'ModeMsg', { fg = colors.fg, bg = colors.statusline })
    hl(0, 'MoreMsg', { fg = colors.fg, bg = colors.statusline })
    hl(0, 'NonText', { fg = colors.line_number, bg = 'NONE' })
    hl(0, 'Pmenu', { fg = colors.fg, bg = colors.popup_bg })
    hl(0, 'PmenuSel', { fg = colors.fg, bg = colors.popup_sel })
    hl(0, 'PmenuSbar', { fg = 'NONE', bg = colors.popup_scrollbar })
    hl(0, 'PmenuThumb', { fg = 'NONE', bg = colors.fg })
    hl(0, 'Question', { fg = colors.blue, bg = colors.bg })
    hl(0, 'Search', { fg = colors.bg, bg = colors.search })
    hl(0, 'SpecialKey', { fg = colors.blue, bg = 'NONE' })
    hl(0, 'StatusLine', { fg = colors.fg, bg = colors.statusline })
    hl(0, 'StatusLineNC', { fg = colors.fg, bg = colors.statusline_nc })
    hl(0, 'TabLine', { fg = colors.fg, bg = colors.tab_inactive })
    hl(0, 'TabLineFill', { fg = colors.fg, bg = colors.tab_fill })
    hl(0, 'TabLineSel', { fg = colors.fg, bg = colors.tab_active })
    hl(0, 'Title', { fg = colors.fg, bg = 'NONE', bold = true })
    hl(0, 'Visual', { fg = 'NONE', bg = colors.selection })
    hl(0, 'VisualNOS', { fg = 'NONE', bg = colors.selection })
    hl(0, 'WarningMsg', { fg = colors.yellow, bg = colors.bg })
    hl(0, 'WildMenu', { fg = 'NONE', bg = colors.selection })
    
    -- Syntax highlighting
    hl(0, 'Comment', { fg = colors.comment, bg = 'NONE', italic = true })
    hl(0, 'Constant', { fg = colors.blue, bg = 'NONE' })
    hl(0, 'String', { fg = colors.orange, bg = 'NONE' })
    hl(0, 'Character', { fg = colors.orange, bg = 'NONE' })
    hl(0, 'Number', { fg = colors.light_green, bg = 'NONE' })
    hl(0, 'Boolean', { fg = colors.blue, bg = 'NONE' })
    hl(0, 'Float', { fg = colors.light_green, bg = 'NONE' })
    hl(0, 'Identifier', { fg = colors.light_blue, bg = 'NONE' })
    hl(0, 'Function', { fg = colors.yellow, bg = 'NONE' })
    hl(0, 'Statement', { fg = colors.pink, bg = 'NONE' })
    hl(0, 'Conditional', { fg = colors.pink, bg = 'NONE' })
    hl(0, 'Repeat', { fg = colors.pink, bg = 'NONE' })
    hl(0, 'Label', { fg = colors.pink, bg = 'NONE' })
    hl(0, 'Operator', { fg = colors.fg, bg = 'NONE' })
    hl(0, 'Keyword', { fg = colors.pink, bg = 'NONE' })
    hl(0, 'Exception', { fg = colors.pink, bg = 'NONE' })
    hl(0, 'PreProc', { fg = colors.pink, bg = 'NONE' })
    hl(0, 'Include', { fg = colors.pink, bg = 'NONE' })
    hl(0, 'Define', { fg = colors.pink, bg = 'NONE' })
    hl(0, 'Macro', { fg = colors.pink, bg = 'NONE' })
    hl(0, 'Type', { fg = colors.blue, bg = 'NONE' })
    hl(0, 'StorageClass', { fg = colors.blue, bg = 'NONE' })
    hl(0, 'Structure', { fg = colors.blue_green, bg = 'NONE' })
    hl(0, 'Typedef', { fg = colors.blue, bg = 'NONE' })
    hl(0, 'Special', { fg = colors.yellow_orange, bg = 'NONE' })
    hl(0, 'SpecialChar', { fg = colors.fg, bg = 'NONE' })
    hl(0, 'Tag', { fg = colors.fg, bg = 'NONE' })
    hl(0, 'Delimiter', { fg = colors.fg, bg = 'NONE' })
    hl(0, 'SpecialComment', { fg = colors.comment, bg = 'NONE' })
    hl(0, 'Debug', { fg = colors.fg, bg = 'NONE' })
    hl(0, 'Underlined', { fg = colors.fg, bg = 'NONE', underline = true })
    hl(0, 'Conceal', { fg = colors.fg, bg = colors.bg })
    hl(0, 'Ignore', { fg = colors.fg, bg = 'NONE' })
    hl(0, 'Error', { fg = colors.red, bg = colors.bg, undercurl = true, sp = colors.red })
    hl(0, 'Todo', { fg = colors.yellow_orange, bg = colors.bg, bold = true })
    
    -- Spell checking
    hl(0, 'SpellBad', { fg = 'NONE', undercurl = true, sp = colors.red })
    hl(0, 'SpellCap', { fg = 'NONE', undercurl = true, sp = colors.yellow })
    hl(0, 'SpellRare', { fg = 'NONE', undercurl = true, sp = colors.violet })
    hl(0, 'SpellLocal', { fg = 'NONE', undercurl = true, sp = colors.blue })
    
    -- Other UI elements
    hl(0, 'Whitespace', { fg = colors.line_number })
    hl(0, 'NormalFloat', { bg = colors.popup_bg })
    hl(0, 'WinBar', { fg = colors.fg, bg = colors.bg, bold = true })
    hl(0, 'WinBarNc', { fg = colors.fg, bg = colors.bg })
    hl(0, 'QuickFixLine', { bold = true })

    -- Apply modular plugin highlights
    M.apply_plugin_highlights(colors)
end

-- Apply plugin-specific highlights using the modular system
function M.apply_plugin_highlights(colors)
    local hl = vim.api.nvim_set_hl
    
    -- Load and apply LSP highlights
    local lsp_highlights = require('neon-dark.plugins.lsp').get_highlights(colors)
    for group, opts in pairs(lsp_highlights) do
        hl(0, group, opts)
    end
    
    -- Load and apply Treesitter highlights  
    local ts_highlights = require('neon-dark.plugins.treesitter').get_highlights(colors)
    for group, opts in pairs(ts_highlights) do
        hl(0, group, opts)
    end
    
    -- Load and apply Telescope highlights (if available)
    if pcall(require, 'telescope') then
        local telescope_highlights = require('neon-dark.plugins.telescope').get_highlights(colors)
        for group, opts in pairs(telescope_highlights) do
            hl(0, group, opts)
        end
    end
    
    -- Apply traditional plugin highlights from highlights.lua
    local plugin_highlights = require('neon-dark.highlights').get_highlights(colors)
    for group, opts in pairs(plugin_highlights) do
        hl(0, group, opts)
    end
end

return M