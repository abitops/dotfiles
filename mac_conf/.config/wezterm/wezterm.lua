-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.window_background_opacity = 0.85
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.font_size = 14.0
config.font = wezterm.font("MesloLGS NF")

-- For example, changing the color scheme:
-- config.color_scheme = 'Catpuccin Mocha'
-- config.color_scheme = 'Aci (Gogh)'
config.color_scheme = 'nord'

-- Open links
config.mouse_bindings = {
  -- Ctrl-click will open the link under the mouse cursor
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'CTRL',
    action = wezterm.action.OpenLinkAtMouseCursor,
  },
}

-- and finally, return the configuration to wezterm
return config
