local wezterm = require("wezterm")
--local config = wezterm.config_builder()
local wezterm_lib = require("configure/lib").wezterm_lib


local lib_misc = {
  window_close_confirmation = "NeverPrompt",
  check_for_updates = false,
  automatically_reload_config = false,
  selection_word_boundary = " \t\n{}[]()\"'`,;:@│┃*…$",
  exit_behavior = "Close",
  audible_bell = "Disabled",
}

local full_config = wezterm_lib.merge_all(
  lib_misc,
  require("configure.window"),
  require("configure.font"),
  require("configure.rendering"),
  require("configure.colors"),
  require("configure.cursor"),
  {}
)
--#----------------------------#
--#  🌸 Rendering (Vulkan) 🌸  #
--#----------------------------#
--nfig.front_end = "WebGpu"
----local vulkan_adapter = nil
--for _, gpu in ipairs(wezterm.gui.enumerate_gpus()) do
--  if gpu.backend == 'Vulkan' then
--    vulkan_adapter = gpu
--    break
--  end
--end

--if vulkan_adapter then
--  config.webgpu_preferred_adapter = vulkan_adapter
--else
--  error("only Vulkan allowed")
--end
--config.webgpu_power_preference = "HighPerformance"

--config.enable_wayland = true

--#--------------#
--#  🌸 Font 🌸  #
--#--------------#
--config.font_dirs = {
--  wezterm.home_dir .. '/.config/myfonts',
--  wezterm.home_dir .. '/.config/myfonts/jetbrains'
--}
--config.font = wezterm.font('JetBrainsMono-Regular', { weight = 'Regular', italic = false })
--config.font_size = 12.0
--config.line_height = 1

-- freetype tuning for sharp text with linux
--config.freetype_load_target = 'Light'
--config.freetype_render_target = 'HorizontalLcd'

--config.font_rules = {
--  {
--    italic = true,
--    font = wezterm.font('Victor Mono', { italic = true }),
--  },
--}

--#----------------#
--#  🌸 Window 🌸  #
--#----------------#
--config.window_decorations = "NONE"

-- padding
--config.window_padding = {
--  left = 12,
--  right = 12,
--  top = 12,
--  bottom = 12,
--}

-- transparency
--config.window_background_opacity = 0.6

--#----------------#
--#  🌸 Themes 🌸  #
--#----------------#
--config.color_scheme = 'Catppuccin Mocha'


--#----------------#
--#  🌸 Cursor 🌸  #
--#----------------#

-- prevent to press '~' or '^' twice (important for devs)
--config.use_dead_keys = false

-- cursor style
--config.default_cursor_style = 'BlinkingBar'
--config.cursor_blink_rate = 550

--config.scrollback_lines = 5000

--#----------------#
--#  🌸 Tabbar 🌸  #
--#----------------#
--config.hide_tab_bar_if_only_one_tab = true
--config.use_fancy_tab_bar = false

--#----------------#
--#  🌸 Colors 🌸  #
--#----------------#
--config.colors = {
--  foreground = "#ffffff",
--  background = "#000000",
--
--  cursor_bg = "#ff79c6",
--  cursor_border = "#b9f2ca",
--}

return full_config
