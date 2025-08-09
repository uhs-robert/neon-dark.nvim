-- Neon Dark Theme - Color Definitions
-- Professional dark theme with vibrant neon accent colors

local M = {}

-- Get color palette based on configuration
function M.get_colors(opts)
  opts = opts or {}
  
  local colors = {
    none = "NONE",
    
    -- Core theme colors (matching VSCode dark theme)
    bg = "#1F1F1F",  -- Match VSCode's vscBack
    fg = "#D4D4D4",  -- Match VSCode's vscFront
    line_number = "#5A5A5A",
    selection = "#264F78",
    border = "#444444", -- vscSplitDark
    
    -- Cursor colors
    cursor_dark_dark = "#222222", -- vscCursorDarkDark  
    cursor_dark = "#51504F", -- vscCursorDark
    cursor_light = "#AEAFAD", -- vscCursorLight
    
    -- UI colors (VSCode equivalent)
    tab_current = "#1F1F1F", -- vscTabCurrent
    tab_other = "#2D2D2D", -- vscTabOther
    tab_outside = "#252526", -- vscTabOutside
    
    -- Left panel colors
    left_dark = "#252526", -- vscLeftDark
    left_mid = "#373737", -- vscLeftMid
    left_light = "#636369", -- vscLeftLight
    
    -- Popup/menu colors
    popup_front = "#BBBBBB", -- vscPopupFront
    popup_bg = "#202020", -- vscPopupBack
    popup_highlight_blue = "#04395E", -- vscPopupHighlightBlue
    popup_highlight_gray = "#343B41", -- vscPopupHighlightGray
    popup_scrollbar = "#424242", -- vscSplitThumb
    
    -- Status line colors
    statusline = "#373737", -- vscLeftMid
    statusline_nc = "#252526", -- vscLeftDark
    
    -- Split colors
    split_light = "#898989", -- vscSplitLight
    split_dark = "#444444", -- vscSplitDark
    split_thumb = "#424242", -- vscSplitThumb
    
    -- Diff colors (VSCode style)
    diff_red_dark = "#4B1818", -- vscDiffRedDark
    diff_red_light = "#6F1313", -- vscDiffRedLight
    diff_red_light_light = "#FB0101", -- vscDiffRedLightLight
    diff_green_dark = "#373D29", -- vscDiffGreenDark
    diff_green_light = "#4B5632", -- vscDiffGreenLight
    
    -- Search colors
    search_current = "#515c6a", -- vscSearchCurrent
    search = "#613315", -- vscSearch
    match_paren = "#51504F", -- vscDimHighlight
    fold_bg = "#202d39", -- vscFoldBackground
    
    -- Context colors
    context = "#404040", -- vscContext
    context_current = "#707070", -- vscContextCurrent
    
    -- Suggestion colors
    suggestion = "#6A6A6A", -- vscSuggestion
    
    -- Syntax colors (VSCode equivalent naming)
    comment = "#6A9955", -- vscGreen
    gray = "#808080", -- vscGray
    violet = "#646695", -- vscViolet
    blue = "#569CD6", -- vscBlue
    accent_blue = "#4FC1FF", -- vscAccentBlue
    dark_blue = "#223E55", -- vscDarkBlue
    medium_blue = "#18a2fe", -- vscMediumBlue
    disabled_blue = "#729DB3", -- vscDisabledBlue
    light_blue = "#9CDCFE", -- vscLightBlue
    green = "#6A9955", -- vscGreen
    blue_green = "#4EC9B0", -- vscBlueGreen
    light_green = "#B5CEA8", -- vscLightGreen
    red = "#F44747", -- vscRed
    orange = "#CE9178", -- vscOrange
    light_red = "#D16969", -- vscLightRed
    yellow_orange = "#D7BA7D", -- vscYellowOrange
    yellow = "#DCDCAA", -- vscYellow
    dark_yellow = "#FFD602", -- vscDarkYellow
    pink = "#C586C0", -- vscPink
    
    -- Git colors (VSCode style)
    git_added = "#81b88b", -- vscGitAdded
    git_modified = "#e2c08d", -- vscGitModified
    git_deleted = "#c74e39", -- vscGitDeleted
    git_renamed = "#73c991", -- vscGitRenamed
    git_untracked = "#73c991", -- vscGitUntracked
    git_ignored = "#8c8c8c", -- vscGitIgnored
    git_stage_modified = "#e2c08d", -- vscGitStageModified
    git_stage_deleted = "#c74e39", -- vscGitStageDeleted
    git_conflicting = "#e4676b", -- vscGitConflicting
    git_submodule = "#8db9e2", -- vscGitSubmodule
    
    -- UI accent colors
    ui_blue = "#084671", -- vscUiBlue
    ui_orange = "#f28b25", -- vscUiOrange
    popup_highlight_light_blue = "#d7eafe", -- vscPopupHighlightLightBlue
    
    -- Low contrast with default background
    dim_highlight = "#51504F", -- vscDimHighlight
    
    -- Neon accent colors (unchanged - these are the theme signature)
    neon_green = "#39FF14",
    neon_blue = "#1F51FF", 
    neon_red = "#FF073A",
    neon_yellow = "#FFFF33",
    neon_orange = "#FF5F1F",
    neon_purple = "#B026FF",
    neon_pink = "#FF10F0",
    neon_cyan = "#0FF0FC",
  }
  
  return colors
end

-- Legacy compatibility - provide old interface with VSCode mapping
M.colors = M.get_colors()
M.color_overrides = {
  vscFront = M.colors.fg,
  vscBack = M.colors.bg,
  vscSelection = M.colors.selection,
  vscLineNumber = M.colors.line_number,
  vscCursorDarkDark = M.colors.cursor_dark_dark,
  vscCursorDark = M.colors.cursor_dark,
  vscCursorLight = M.colors.cursor_light,
  vscTabCurrent = M.colors.tab_current,
  vscTabOther = M.colors.tab_other,
  vscTabOutside = M.colors.tab_outside,
  vscLeftDark = M.colors.left_dark,
  vscLeftMid = M.colors.left_mid,
  vscLeftLight = M.colors.left_light,
  vscPopupFront = M.colors.popup_front,
  vscPopupBack = M.colors.popup_bg,
  vscPopupHighlightBlue = M.colors.popup_highlight_blue,
  vscPopupHighlightGray = M.colors.popup_highlight_gray,
  vscSplitLight = M.colors.split_light,
  vscSplitDark = M.colors.split_dark,
  vscSplitThumb = M.colors.split_thumb,
  vscDiffRedDark = M.colors.diff_red_dark,
  vscDiffRedLight = M.colors.diff_red_light,
  vscDiffRedLightLight = M.colors.diff_red_light_light,
  vscDiffGreenDark = M.colors.diff_green_dark,
  vscDiffGreenLight = M.colors.diff_green_light,
  vscSearchCurrent = M.colors.search_current,
  vscSearch = M.colors.search,
  vscContext = M.colors.context,
  vscContextCurrent = M.colors.context_current,
  vscFoldBackground = M.colors.fold_bg,
  vscDimHighlight = M.colors.dim_highlight,
}

return M