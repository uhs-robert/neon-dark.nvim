# neon-dark.nvim

> [!WARNING]
> Currently under construction. Theme is not completed yet. Come back later!
> 

A professional dark Neovim colorscheme with vibrant neon accent colors. This theme provides excellent contrast and readability while featuring bright, eye-catching highlights for important UI elements.

## ✨ Features

- **Dark theme optimized for long coding sessions** - Deep black background (`#000000`) with high contrast
- **Vibrant neon accent colors** - Bright green, blue, red, and yellow highlights for important elements
- **Comprehensive plugin support** - LSP, Treesitter, Telescope, Lualine, GitSigns, and more
- **Terminal color integration** - Consistent colors across Neovim and terminal emulators
- **Highly customizable** - Override any highlight group to match your preferences
- **Modern syntax highlighting** - Enhanced support for popular languages and frameworks

## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim) (Recommended)

#### Basic Setup
```lua
{
  "your-username/neon-dark.nvim",
  lazy = false, -- make sure we load this during startup
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("neon-dark").setup()
    vim.cmd([[colorscheme neon-dark]])
  end,
}
```

#### With Configuration
```lua
{
  "your-username/neon-dark.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("neon-dark").setup({
      -- Custom highlight overrides
      highlights = {
        Comment = { fg = "#6A9955", italic = true },
        Keyword = { fg = "#00D4AA", bold = true },
        -- Add any custom highlight groups here
      }
    })
    vim.cmd([[colorscheme neon-dark]])
  end,
}
```

#### With Other Plugins
```lua
{
  "your-username/neon-dark.nvim",
  lazy = false,
  priority = 1000,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
    "nvim-lualine/lualine.nvim",
  },
  config = function()
    require("neon-dark").setup()
    vim.cmd([[colorscheme neon-dark]])
    
    -- Configure lualine to use neon-dark theme
    require('lualine').setup({
      options = { theme = 'neon-dark' }
    })
  end,
}
```

### Using other plugin managers

#### [packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
use {
  "your-username/neon-dark.nvim",
  config = function()
    require("neon-dark").setup()
    vim.cmd([[colorscheme neon-dark]])
  end
}
```

#### [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'your-username/neon-dark.nvim'

" In your init.vim after plug#end()
lua << EOF
require("neon-dark").setup()
vim.cmd([[colorscheme neon-dark]])
EOF
```

### Manual Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/neon-dark.nvim ~/.config/nvim/colors/neon-dark
   ```

2. Add to your `init.lua`:
   ```lua
   vim.opt.rtp:prepend("~/.config/nvim/colors/neon-dark")
   require("neon-dark").setup()
   vim.cmd([[colorscheme neon-dark]])
   ```

## 🚀 Usage

### Basic Usage
```lua
-- Load with default settings
require("neon-dark").setup()
vim.cmd([[colorscheme neon-dark]])
```

### Advanced Configuration
```lua
require("neon-dark").setup({
  highlights = {
    -- Override any highlight group
    Normal = { bg = "#000000", fg = "#D4D4D4" },
    Comment = { fg = "#6A9955", italic = true },
    String = { fg = "#00D4AA" },
    Keyword = { fg = "#FF6B6B", bold = true },
    
    -- Custom groups for plugins
    TelescopeSelection = { bg = "#264F78" },
    LspDiagnosticsDefaultError = { fg = "#FF6B6B" },
  }
})
```

### Setting as Default Theme
To automatically load neon-dark when Neovim starts, add this to your `init.lua`:

```lua
vim.cmd([[colorscheme neon-dark]])
```

## 🎨 Color Palette

The theme uses a carefully selected color palette:

- **Background**: `#000000` - Pure black for maximum contrast
- **Foreground**: `#D4D4D4` - Light gray for excellent readability
- **Neon Green**: `#00D4AA` - Strings, success indicators
- **Neon Blue**: `#00B4D8` - Keywords, info indicators  
- **Neon Red**: `#FF6B6B` - Errors, important warnings
- **Neon Yellow**: `#FFD93D` - Warnings, special highlights
- **Neon Purple**: `#B19CD9` - Types, constants

## 🔧 Plugin Integration

neon-dark.nvim includes optimized support for:

- **LSP** - Error, warning, info, and hint diagnostics
- **Treesitter** - Enhanced syntax highlighting for 40+ languages
- **Telescope** - Beautiful search and picker interface
- **Lualine** - Status line theme integration
- **GitSigns** - Git diff indicators in the gutter
- **nvim-tree** - File explorer with consistent theming
- **Dashboard** - Startup screen with neon branding
- **Lazy.nvim** - Plugin manager interface
- **WhichKey** - Command palette styling

## 🛠️ Customization

### Custom Highlight Groups
```lua
require("neon-dark").setup({
  highlights = {
    -- Make comments more subtle
    Comment = { fg = "#5A5A5A", italic = true },
    
    -- Bright function names
    Function = { fg = "#00D4AA", bold = true },
    
    -- Custom group for your own use
    MyCustomHighlight = { fg = "#FFD93D", bg = "#264F78" },
  }
})
```

### Terminal Integration
neon-dark automatically sets up terminal colors for a consistent experience. If you want to use these colors in your terminal emulator, check the generated terminal color configuration in `lua/neon-dark/terminal.lua`.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit issues, feature requests, or pull requests.

## 📄 License

MIT License - see LICENSE file for details.
