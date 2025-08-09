-- Neon Dark Theme - Color Definitions
-- Professional dark theme with vibrant neon accent colors

local M = {}

-- Get color palette based on configuration
function M.get_colors(opts)
  opts = opts or {}
  
  local colors = {
    none = "NONE",
    
    -- Core theme colors (rebranded from vsc* names)
    bg = "#000000",
    fg = "#D4D4D4",
    line_number = "#5A5A5A",
    selection = "#264F78",
    border = "#084671",
    
    -- UI colors
    tab_active = "#000000",
    tab_inactive = "#1F1F1F",  
    tab_fill = "#FFFFFF",
    popup_bg = "#080808",
    popup_sel = "#264F78",
    popup_scrollbar = "#5A5A5A",
    statusline = "#084671",
    statusline_nc = "#1F1F1F",
    
    -- Diff colors
    diff_add = "#1B5E20",
    diff_change = "#E65100", 
    diff_delete = "#B71C1C",
    diff_text = "#BF360C",
    
    -- Search colors
    search = "#5D4037",
    search_current = "#FF6F00",
    match_paren = "#616161",
    fold_bg = "#212121",
    
    -- Syntax colors (neutral names)
    comment = "#6A9955",
    gray = "#808080", 
    violet = "#646695",
    blue = "#569CD6",
    accent_blue = "#4FC1FF",
    dark_blue = "#223E55",
    medium_blue = "#18a2fe",
    disabled_blue = "#729DB3",
    light_blue = "#9CDCFE",
    green = "#6A9955",
    blue_green = "#4EC9B0",
    light_green = "#B5CEA8",
    red = "#F44747",
    orange = "#CE9178",
    light_red = "#D16969", 
    yellow_orange = "#D7BA7D",
    yellow = "#DCDCAA",
    dark_yellow = "#FFD602",
    pink = "#C586C0",
    
    -- UI accent colors
    ui_blue = "#084671",
    ui_orange = "#f28b25",
    popup_highlight_blue = "#d7eafe",
    
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

-- Legacy compatibility - provide old interface
M.colors = M.get_colors()
M.color_overrides = {
  vscFront = M.colors.fg,
  vscBack = M.colors.bg,
  vscSelection = M.colors.selection,
}

return M