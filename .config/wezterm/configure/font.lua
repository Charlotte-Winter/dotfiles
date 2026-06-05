-- ~/.config/wezterm/configure/font.lua

--#--------------#
--#  🌸 Font 🌸  #
--#--------------#

local wezterm = require("wezterm")
return function(config)
-- import fonts
  config.font_dirs = {
    wezterm.config_dir .. '/configure/fonts/jetbrains',
    wezterm.config_dir .. '/configure/fonts/victor',
  }
  config.bold_brightens_ansi_colors = "No"
  config.font = wezterm.font('JetBrainsMono-Regular', { weight = 'Regular'}) --, italic = false })

  config.font_size = 13.0
  config.line_height = 1.0

-- font rules
  config.font_rules = {
    {
      italic = true,
      font = wezterm.font('JetBrainsMono-Regular', { italic = true })
    }
  }
end
