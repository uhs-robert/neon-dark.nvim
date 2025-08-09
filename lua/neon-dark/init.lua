-- Neon Dark Theme - Main Plugin Entry Point
-- Professional standalone dark theme with vibrant neon accent colors

local M = {}

-- Setup the neon-dark colorscheme
function M.setup(opts)
    opts = opts or {}
    
    -- Load color definitions
    local colors = require("neon-dark.colors").get_colors(opts)
    
    -- Set vim options for the colorscheme
    vim.o.background = "dark"
    vim.o.termguicolors = true
    
    -- Clear existing highlights
    if vim.g.colors_name then
        vim.cmd("highlight clear")
    end
    
    -- Reset syntax highlighting
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    
    -- Set the colorscheme name
    vim.g.colors_name = "neon-dark"
    
    -- Apply all theme highlights
    require("neon-dark.theme").apply_highlights(colors)
    
    -- Setup terminal colors
    require("neon-dark.terminal").setup(colors)
    
    -- Apply any user-provided highlight overrides
    if opts.highlights then
        local hl = vim.api.nvim_set_hl
        for group, settings in pairs(opts.highlights) do
            hl(0, group, settings)
        end
    end
end

-- Load the colorscheme immediately (for direct require usage)
function M.load()
    M.setup()
end

return M