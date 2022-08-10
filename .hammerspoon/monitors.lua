function moveWindowToDisplay(d)
	  return function()
		      local displays = hs.screen.allScreens()
			      local win = hs.window.focusedWindow()
				      win:moveToScreen(displays[d], false, true)
					    end
					end

					hs.hotkey.bind({"ctrl", "alt", "cmd"}, "1", moveWindowToDisplay(1))
					hs.hotkey.bind({"ctrl", "alt", "cmd"}, "2", moveWindowToDisplay(2))
					hs.hotkey.bind({"ctrl", "alt", "cmd"}, "3", moveWindowToDisplay(3))

