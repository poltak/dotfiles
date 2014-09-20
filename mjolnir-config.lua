local app      = require "mjolnir.application"
local hotkey   = require "mjolnir.hotkey"
local sleep    = require "mjolnir.cmsj.caffeinate"
local alert    = require "mjolnir.alert"
local spotify  = require "mjolnir.lb.spotify"



-- Application hotkeys

hotkey.bind({"alt"}, "w", function()
  app.launchorfocus("Safari.app")
end)

hotkey.bind({"alt"}, "t", function()
  app.launchorfocus("iTerm.app")
end)

hotkey.bind({"alt"}, "m", function()
  app.launchorfocus("Airmail.app")
end)

hotkey.bind({"alt"}, "e", function()
  app.launchorfocus("Finder.app")
end)

hotkey.bind({"alt"}, "s", function()
  app.launchorfocus("Sublime Text.app")
end)

hotkey.bind({"alt"}, "n", function()
  spotify.displayCurrentTrack()
end)



-- Caffeine and NoSleep functionality

sleep.set("SystemIdle", True, True)

hotkey.bind({"alt"}, "z", function()
  if sleep.toggle("System") then
    alert.show("System sleep disabled")
  else
    alert.show("System sleep enabled")
  end
end)
