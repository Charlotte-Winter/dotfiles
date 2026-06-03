-- ~/.config/wezterm/configure/misc.lua

--#--------------#
--#  🌸 MISC 🌸  #
--#--------------#

return function(config)
  config.window_close_confirmation = "NeverPrompt"
  config.check_for_updates = false
  config.automatically_reload_config = false
  config.selection_word_boundary = " \t\n{}[]()\"'`,;:@│┃*…$"
  config.exit_behavior = "Close"
  config.audible_bell = "Disabled"
end
