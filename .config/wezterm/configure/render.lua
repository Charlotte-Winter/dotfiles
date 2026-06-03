-- ~/.config/wezterm/configure/render.lua

--#----------------------------#
--#  🌸 Rendering (Vulkan) 🌸  #
--#----------------------------#

--local wezterm = require("wezterm")
return function(config)

--config.front_end = "WebGpu"
--  local vulkan_adapter = nil
--  for _, gpu in ipairs(wezterm.gui.enumerate_gpus()) do
--    if gpu.backend == 'Vulkan' then
--      vulkan_adapter = gpu
--      break
--    end
--  end

--  if vulkan_adapter then
--    config.webgpu_preferred_adapter = vulkan_adapter
--  else
--    error("only vulkan allowed")
--  end
--  config.webgpu_power_preference = "HighPerformance"

-- window options

  config.enable_wayland = true
  config.max_fps = 120
--config.prefer_egl = false
end
