-- Neon Dark Theme - Core Theme Engine
-- Standalone implementation without VSCode dependency

local M = {}

-- Apply all highlight groups for the theme
function M.apply_highlights(colors)
    local hl = vim.api.nvim_set_hl
    local isDark = vim.o.background == 'dark'

    -- Editor highlights (VSCode equivalent)
    hl(0, 'Normal', { fg = colors.fg, bg = colors.bg })
    hl(0, 'ColorColumn', { fg = 'NONE', bg = colors.cursor_dark_dark })
    hl(0, 'Cursor', { fg = colors.cursor_dark, bg = colors.cursor_light })
    hl(0, 'CursorLine', { bg = colors.cursor_dark_dark })
    hl(0, 'CursorColumn', { fg = 'NONE', bg = colors.cursor_dark_dark })
    hl(0, 'Directory', { fg = colors.blue, bg = colors.bg })
    hl(0, 'DiffAdd', { fg = 'NONE', bg = colors.diff_green_light })
    hl(0, 'DiffChange', { fg = 'NONE', bg = colors.diff_red_dark })
    hl(0, 'DiffDelete', { fg = 'NONE', bg = colors.diff_red_light })
    hl(0, 'DiffText', { fg = 'NONE', bg = colors.diff_red_light })
    hl(0, 'EndOfBuffer', { fg = colors.bg, bg = 'NONE' })
    hl(0, 'ErrorMsg', { fg = colors.red, bg = colors.bg })
    hl(0, 'VertSplit', { fg = colors.split_dark, bg = colors.bg })
    hl(0, 'WinSeparator', { link = 'VertSplit' })
    hl(0, 'Folded', { fg = 'NONE', bg = colors.fold_bg })
    hl(0, 'FoldColumn', { fg = colors.line_number, bg = colors.bg })
    hl(0, 'SignColumn', { fg = 'NONE', bg = colors.bg })
    hl(0, 'IncSearch', { fg = colors.none, bg = colors.search_current })
    hl(0, 'LineNr', { fg = colors.line_number, bg = colors.bg })
    hl(0, 'CursorLineNr', { fg = colors.popup_front, bg = colors.bg })
    hl(0, 'MatchParen', { fg = colors.none, bg = colors.dim_highlight })
    hl(0, 'ModeMsg', { fg = colors.fg, bg = colors.left_dark })
    hl(0, 'MoreMsg', { fg = colors.fg, bg = colors.left_dark })
    hl(0, 'NonText', { fg = colors.line_number, bg = colors.none })
    hl(0, 'Pmenu', { fg = colors.popup_front, bg = colors.popup_bg })
    hl(0, 'PmenuSel', { fg = colors.popup_front, bg = colors.popup_highlight_blue })
    hl(0, 'PmenuSbar', { fg = 'NONE', bg = colors.popup_highlight_gray })
    hl(0, 'PmenuThumb', { fg = 'NONE', bg = colors.popup_front })
    hl(0, 'Question', { fg = colors.blue, bg = colors.bg })
    hl(0, 'Search', { fg = colors.none, bg = colors.search })
    hl(0, 'SpecialKey', { fg = colors.blue, bg = colors.none })
    hl(0, 'StatusLine', { fg = colors.fg, bg = colors.left_mid })
    hl(0, 'StatusLineNC', { fg = colors.fg, bg = colors.left_dark })
    hl(0, 'TabLine', { fg = colors.fg, bg = colors.tab_other })
    hl(0, 'TabLineFill', { fg = colors.fg, bg = colors.tab_outside })
    hl(0, 'TabLineSel', { fg = colors.fg, bg = colors.tab_current })
    hl(0, 'Title', { fg = colors.none, bg = colors.none, bold = true })
    hl(0, 'Visual', { fg = colors.none, bg = colors.selection })
    hl(0, 'VisualNOS', { fg = colors.none, bg = colors.selection })
    hl(0, 'WarningMsg', { fg = colors.yellow, bg = colors.bg })
    hl(0, 'WildMenu', { fg = colors.none, bg = colors.selection })
    
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
    
    -- Other UI elements (VSCode style)  
    hl(0, 'Whitespace', { fg = isDark and colors.line_number or colors.tab_other })
    hl(0, 'NormalFloat', { bg = colors.popup_bg })
    hl(0, 'WinBar', { fg = colors.fg, bg = colors.bg, bold = true })
    hl(0, 'WinBarNc', { fg = colors.fg, bg = colors.bg })
    hl(0, 'QuickFixLine', { bold = true })
    
    -- Add complete Treesitter highlights matching VSCode
    M.apply_treesitter_highlights(colors, isDark)

    -- Apply modular plugin highlights
    M.apply_plugin_highlights(colors)
end

-- Apply comprehensive Treesitter highlights matching VSCode
function M.apply_treesitter_highlights(colors, isDark)
    local hl = vim.api.nvim_set_hl
    local c = colors
    
    -- Core Treesitter highlights (VSCode style)
    hl(0, '@error', { fg = c.red, bg = 'NONE' })
    hl(0, '@punctuation.bracket', { fg = c.fg, bg = 'NONE' })
    hl(0, '@punctuation.special', { fg = c.fg, bg = 'NONE' })
    hl(0, '@punctuation.delimiter', { fg = c.fg, bg = 'NONE' })
    hl(0, '@comment', { fg = c.green, bg = 'NONE', italic = true })
    hl(0, '@comment.note', { fg = c.blue_green, bg = 'NONE', bold = true })
    hl(0, '@comment.warning', { fg = c.yellow_orange, bg = 'NONE', bold = true })
    hl(0, '@comment.error', { fg = c.red, bg = 'NONE', bold = true })
    hl(0, '@constant', { fg = c.accent_blue, bg = 'NONE' })
    hl(0, '@constant.builtin', { fg = c.blue, bg = 'NONE' })
    hl(0, '@constant.macro', { fg = c.blue_green, bg = 'NONE' })
    hl(0, '@string.regexp', { fg = c.orange, bg = 'NONE' })
    hl(0, '@string', { fg = c.orange, bg = 'NONE' })
    hl(0, '@character', { fg = c.orange, bg = 'NONE' })
    hl(0, '@number', { fg = c.light_green, bg = 'NONE' })
    hl(0, '@number.float', { fg = c.light_green, bg = 'NONE' })
    hl(0, '@boolean', { fg = c.blue, bg = 'NONE' })
    hl(0, '@annotation', { fg = c.yellow, bg = 'NONE' })
    hl(0, '@attribute', { fg = c.yellow, bg = 'NONE' })
    hl(0, '@attribute.builtin', { fg = c.blue_green, bg = 'NONE' })
    hl(0, '@module', { fg = c.blue_green, bg = 'NONE' })
    hl(0, '@function', { fg = c.yellow, bg = 'NONE' })
    hl(0, '@function.builtin', { fg = c.yellow, bg = 'NONE' })
    hl(0, '@function.macro', { fg = c.yellow, bg = 'NONE' })
    hl(0, '@function.method', { fg = c.yellow, bg = 'NONE' })
    hl(0, '@define', { fg = c.pink, bg = 'NONE' })
    hl(0, '@variable', { fg = c.light_blue, bg = 'NONE' })
    hl(0, '@variable.builtin', { fg = c.blue, bg = 'NONE' })
    hl(0, '@variable.parameter', { fg = c.light_blue, bg = 'NONE' })
    hl(0, '@variable.parameter.reference', { fg = c.light_blue, bg = 'NONE' })
    hl(0, '@variable.member', { fg = c.light_blue, bg = 'NONE' })
    hl(0, '@property', { fg = c.light_blue, bg = 'NONE' })
    hl(0, '@constructor', { fg = c.blue, bg = 'NONE' })
    hl(0, '@label', { fg = c.light_blue, bg = 'NONE' })
    hl(0, '@keyword', { fg = c.blue, bg = 'NONE' })
    hl(0, '@keyword.conditional', { fg = c.pink, bg = 'NONE' })
    hl(0, '@keyword.repeat', { fg = c.pink, bg = 'NONE' })
    hl(0, '@keyword.return', { fg = c.pink, bg = 'NONE' })
    hl(0, '@keyword.exception', { fg = c.pink, bg = 'NONE' })
    hl(0, '@keyword.import', { fg = c.pink, bg = 'NONE' })
    hl(0, '@operator', { fg = c.fg, bg = 'NONE' })
    hl(0, '@type', { fg = c.blue_green, bg = 'NONE' })
    hl(0, '@type.qualifier', { fg = c.blue, bg = 'NONE' })
    hl(0, '@structure', { fg = c.light_blue, bg = 'NONE' })
    hl(0, '@tag', { fg = c.blue, bg = 'NONE' })
    hl(0, '@tag.builtin', { fg = c.blue, bg = 'NONE' })
    hl(0, '@tag.delimiter', { fg = c.gray, bg = 'NONE' })
    hl(0, '@tag.attribute', { fg = c.light_blue, bg = 'NONE' })
    
    -- Markup/Markdown highlights (VSCode style)
    hl(0, '@text', { fg = c.fg, bg = 'NONE' })
    hl(0, '@markup.strong', { fg = isDark and c.blue or c.violet, bold = true })
    hl(0, '@markup.italic', { fg = c.fg, bg = 'NONE', italic = true })
    hl(0, '@markup.underline', { fg = c.yellow_orange, bg = 'NONE', underline = true })
    hl(0, '@markup.strikethrough', { fg = c.fg, bg = 'NONE', strikethrough = true })
    hl(0, '@markup.heading', { fg = isDark and c.blue or c.yellow_orange, bold = true })
    hl(0, '@markup.heading.1.markdown', { fg = c.blue, bg = 'NONE', bold = true })
    hl(0, '@markup.heading.2.markdown', { fg = c.orange, bg = 'NONE', bold = true })
    hl(0, '@markup.heading.3.markdown', { fg = c.yellow, bg = 'NONE', bold = true })
    hl(0, '@markup.heading.4.markdown', { fg = c.green, bg = 'NONE', bold = true })
    hl(0, '@markup.heading.5.markdown', { fg = c.blue, bg = 'NONE', bold = true })
    hl(0, '@markup.heading.6.markdown', { fg = c.pink, bg = 'NONE', bold = true })
    hl(0, '@markup.raw', { fg = c.fg, bg = 'NONE' })
    hl(0, '@markup.raw.markdown', { fg = c.orange, bg = 'NONE' })
    hl(0, '@markup.raw.markdown_inline', { fg = c.orange, bg = 'NONE' })
    hl(0, '@markup.link.label', { fg = c.light_blue, bg = 'NONE', underline = true })
    hl(0, '@markup.link.url', { fg = c.fg, bg = 'NONE', underline = true })
    hl(0, '@markup.list.checked', { link = 'Todo' })
    hl(0, '@markup.list.unchecked', { link = 'Todo' })
    
    -- Diff highlights
    hl(0, '@diff.plus', { link = 'DiffAdd' })
    hl(0, '@diff.minus', { link = 'DiffDelete' })
    hl(0, '@diff.delta', { link = 'DiffChange' })
    
    -- LSP semantic tokens (VSCode style)
    hl(0, '@type.builtin', { fg = c.blue, bg = 'NONE' })
    hl(0, '@lsp.typemod.type.defaultLibrary', { link = '@type.builtin' })
    hl(0, '@lsp.type.type', { link = '@type' })
    hl(0, '@lsp.type.typeParameter', { link = '@type' })
    hl(0, '@lsp.type.macro', { link = '@constant' })
    hl(0, '@lsp.type.enumMember', { link = '@constant' })
    hl(0, '@lsp.typemod.variable.readonly', { link = '@constant' })
    hl(0, '@lsp.typemod.property.readonly', { link = '@constant' })
    hl(0, '@lsp.typemod.variable.constant', { link = '@constant' })
    hl(0, '@lsp.type.member', { link = '@function' })
    hl(0, '@lsp.type.keyword', { link = '@keyword' })
    hl(0, '@lsp.typemod.keyword.controlFlow', { fg = c.pink, bg = 'NONE' })
    hl(0, '@lsp.type.comment.c', { fg = c.dim_highlight, bg = 'NONE' })
    hl(0, '@lsp.type.comment.cpp', { fg = c.dim_highlight, bg = 'NONE' })
    
    -- Legacy highlights for compatibility
    hl(0, '@event', { link = 'Identifier' })
    hl(0, '@interface', { link = 'Identifier' })
    hl(0, '@modifier', { link = 'Identifier' })
    hl(0, '@regexp', { fg = c.red, bg = 'NONE' })
    hl(0, '@decorator', { link = 'Identifier' })
    hl(0, '@textReference', { fg = isDark and c.orange or c.yellow_orange })
    hl(0, '@stringEscape', { fg = isDark and c.orange or c.yellow_orange, bold = true })
end

-- Apply plugin-specific highlights using the modular system
function M.apply_plugin_highlights(colors)
    local hl = vim.api.nvim_set_hl
    
    -- Load and apply LSP highlights
    local lsp_highlights = require('neon-dark.plugins.lsp').get_highlights(colors)
    for group, opts in pairs(lsp_highlights) do
        hl(0, group, opts)
    end
    
    -- Load and apply Treesitter highlights from the modular system (for neon customizations)
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