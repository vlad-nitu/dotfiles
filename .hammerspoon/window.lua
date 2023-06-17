-- half of screen
hs.hotkey.bind({'alt', 'cmd'}, 'left', function() hs.window.focusedWindow():moveToUnit({0, 0, 0.5, 1}) end)
hs.hotkey.bind({'alt', 'cmd'}, 'right', function() hs.window.focusedWindow():moveToUnit({0.5, 0, 0.5, 1}) end)
hs.hotkey.bind({'alt', 'cmd'}, 'up', function() hs.window.focusedWindow():moveToUnit({0, 0, 1, 0.5}) end)
hs.hotkey.bind({'alt', 'cmd'}, 'down', function() hs.window.focusedWindow():moveToUnit({0, 0.5, 1, 0.5}) end)

-- broken display
hs.hotkey.bind({'alt', 'cmd'}, ',', function() hs.window.focusedWindow():moveToUnit({0, 0, 0.94, 0.94}) end)

-- quarter of screen
hs.hotkey.bind({'shift', 'alt', 'cmd'}, 'left', function() hs.window.focusedWindow():moveToUnit({0, 0, 0.5, 0.5}) end)
hs.hotkey.bind({'shift', 'alt', 'cmd'}, 'right', function() hs.window.focusedWindow():moveToUnit({0.5, 0.5, 0.5, 0.5}) end)
hs.hotkey.bind({'shift', 'alt', 'cmd'}, 'up', function() hs.window.focusedWindow():moveToUnit({0.5, 0, 0.5, 0.5}) end)
hs.hotkey.bind({'shift', 'alt', 'cmd'}, 'down', function() hs.window.focusedWindow():moveToUnit({0, 0.5, 0.5, 0.5}) end)

-- full screen
hs.hotkey.bind({'alt', 'cmd'}, 'f', function() hs.window.focusedWindow():moveToUnit({0, 0, 1, 1}) end)

-- center screen
hs.hotkey.bind({'alt', 'cmd'}, 'c', function() hs.window.focusedWindow():centerOnScreen() end)


-- Switching windows
-- Switch to the next window
hs.hotkey.bind({"ctrl", "alt"}, "right", function()
    local win = hs.window.focusedWindow()
    if not win then return end
    local windows = hs.fnutils.filter(hs.window.orderedWindows(), function(window)
        return window:screen() == win:screen()
    end)
    local index = hs.fnutils.indexOf(windows, win)
    if not index then return end
    if index == #windows then index = 1 else index = index + 1 end
    windows[index]:focus()
end)

-- Switch to the previous window
hs.hotkey.bind({"ctrl", "alt"}, "left", function()
    local win = hs.window.focusedWindow()
    if not win then return end
    local windows = hs.fnutils.filter(hs.window.orderedWindows(), function(window)
        return window:screen() == win:screen()
    end)
    local index = hs.fnutils.indexOf(windows, win)
    if not index then return end
    if index == 1 then index = #windows else index = index - 1 end
    windows[index]:focus()
end)
