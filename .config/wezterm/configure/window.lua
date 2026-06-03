-- ~/.config/wezterm/configure/window.lua

--#----------------#
--#  🌸 WINDOW 🌸  #
--#----------------#

return function(config)
config.window_padding = {
  left = 12,
  right = 12,
  top = 12,
  bottom = 12,
}

config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.4
end
