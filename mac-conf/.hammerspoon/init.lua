-- make sure to run: defaults write org.hammerspoon.Hammerspoon MJConfigFile "~/.config/.hammerspoon/init.lua"

ctrlDoublePress = require("ctrlDoublePress")
win = hs.window.focusedWindow()
ctrlDoublePress.timeFrame = 0.4


ctrlDoublePress.action = function()
    local focused = hs.application.frontmostApplication()
    print(focused:title())
    if focused:title() == "Alacritty" then
	win:focus()
    else
	win = hs.window.focusedWindow()

	hs.application.launchOrFocus("/Applications/Alacritty.app")
    end

 end
































