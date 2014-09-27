local app      = require "mjolnir.application"
local hotkey   = require "mjolnir.hotkey"
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

