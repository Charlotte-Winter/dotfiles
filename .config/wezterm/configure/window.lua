-- ~/.config/wezterm/configure/window.lua

--#----------------#
--#  🌸 WINDOW 🌸  #
--#----------------#

local wezterm = require("wezterm")

return function(config)
config.window_padding = {
  left = 12,
  right = 12,
  top = 12,
  bottom = 12,
}
config.window_content_alignment = {
  vertical = 'Bottom',
  horizontal = 'Right'
}
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 1.0
end
