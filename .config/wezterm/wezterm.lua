local wezterm = require("wezterm")
local config = wezterm.config_builder()

require("configure.misc")(config)
require("configure.window")(config)
require("configure.font")(config)
require("configure.render")(config)
require("configure.colors")(config)
require("configure.colors")(config)

return config
