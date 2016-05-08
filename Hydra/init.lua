-- https://github.com/sdegutis/hydra
-- Hydra version 1.0 (2014-07-25)

-- Save this as ~/.hydra/init.lua and choose Reload Config from the menu (or press cmd-alt-ctrl R}

-- show an alert to let you know Hydra's running
hydra.alert("Hydra config loaded")

-- open a repl with mash-R; requires https://github.com/sdegutis/hydra-cli
-- hotkey.bind({"cmd", "ctrl", "alt"}, "R", repl.open)

-- show a helpful menu
hydra.menu.show(function()
  local t = {
    {title = "Reload Config", fn = hydra.reload},
    {title = "Open REPL", fn = repl.open},
    {title = "-"},
    {title = "About Hydra", fn = hydra.showabout},
    {title = "Check for Updates...", fn = function() hydra.updates.check(nil, true) end},
    {title = "Quit", fn = os.exit},
  }

  if not hydra.license.haslicense() then
    table.insert(t, 1, {title = "Buy or Enter License...", fn = hydra.license.enter})
    table.insert(t, 2, {title = "-"})
  end

  return t
end)

-- uncomment this line if you want Hydra to make sure it launches at login
-- hydra.autolaunch.set(true)

-- when the "update is available" notification is clicked, open the website
notify.register("showupdate", function() os.execute('open https://github.com/sdegutis/Hydra/releases') end)

-- check for updates every week, and also right now (when first launching)
timer.new(timer.weeks(4), hydra.updates.check):start()
hydra.updates.check()

-- CUSTOM SHORTCUTS BELOW -----------------------------------------------------

-- FULL SIZE

function windowFullSize()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  win:setframe(newframe)
end
hotkey.new({"cmd", "shift"}, "m", windowFullSize):enable()

-- TWO THIRDS

function windowLeftTwoThirds()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.w = newframe.w / 3 * 2
  win:setframe(newframe)
end
hotkey.new({"ctrl", "alt", "cmd"}, "home", windowLeftTwoThirds):enable()

function windowRightTwoThirds()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.x = newframe.w / 3
  newframe.w = newframe.w / 3 * 2
  win:setframe(newframe)
end
hotkey.new({"ctrl", "alt", "cmd"}, "end", windowRightTwoThirds):enable()

function windowTopTwoThirds()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.h = newframe.h / 3 * 2
  win:setframe(newframe)
end
hotkey.new({"ctrl", "alt", "cmd"}, "pageup", windowTopTwoThirds):enable()

function windowBottomTwoThirds()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.h = newframe.h / 3 * 2
  newframe.y = newframe.y + newframe.h / 2
  win:setframe(newframe)
end
hotkey.new({"ctrl", "alt", "cmd"}, "pagedown", windowBottomTwoThirds):enable()

-- ONE HALF

function windowLeftHalf()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.w = newframe.w / 2
  win:setframe(newframe)
end
hotkey.new({"ctrl", "alt"}, "home", windowLeftHalf):enable()

function windowRightHalf()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.w = newframe.w / 2
  newframe.x = newframe.w
  win:setframe(newframe)
end
hotkey.new({"ctrl", "alt"}, "end", windowRightHalf):enable()

function windowTopHalf()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.h = newframe.h / 2
  win:setframe(newframe)
end
hotkey.new({"ctrl", "alt"}, "pageup", windowTopHalf):enable()

function windowBottomHalf()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.h = newframe.h / 2
  newframe.y = newframe.y + newframe.h
  win:setframe(newframe)
end
hotkey.new({"ctrl", "alt"}, "pagedown", windowBottomHalf):enable()

-- ONE THIRD

function windowLeftThird()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.w = newframe.w / 3
  win:setframe(newframe)
end
hotkey.new({"ctrl"}, "home", windowLeftThird):enable()

function windowRightThird()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.x = newframe.w / 3 * 2
  newframe.w = newframe.w / 3
  win:setframe(newframe)
end
hotkey.new({"ctrl"}, "end", windowRightThird):enable()

function windowTopThird()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.h = newframe.h / 3
  win:setframe(newframe)
end
hotkey.new({"ctrl"}, "pageup", windowTopThird):enable()

function windowBottomThird()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.h = newframe.h / 3
  newframe.y = newframe.y + newframe.h * 2
  win:setframe(newframe)
end
hotkey.new({"ctrl"}, "pagedown", windowBottomThird):enable()

-- TOP/BOTTOM HALF, LEFT TWO THIRDS

function windowTopHalfLeftTwoThirds()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.h = newframe.h / 2
  newframe.w = newframe.w / 3 * 2
  win:setframe(newframe)
end
hotkey.new({"ctrl", "alt", "cmd", "shift"}, "pageup", windowTopHalfLeftTwoThirds):enable()

function windowBottomHalfLeftTwoThirds()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.h = newframe.h / 2
  newframe.w = newframe.w / 3 * 2
  newframe.y = newframe.y + newframe.h
  win:setframe(newframe)
end
hotkey.new({"ctrl", "alt", "cmd", "shift"}, "pagedown", windowBottomHalfLeftTwoThirds):enable()

-- TOP/BOTTOM HALF, LEFT HALF

function windowTopHalfLeftHalf()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.h = newframe.h / 2
  newframe.w = newframe.w / 2
  win:setframe(newframe)
end
hotkey.new({"ctrl", "alt", "shift"}, "pageup", windowTopHalfLeftHalf):enable()

function windowBottomHalfLeftHalf()
  local win = window.focusedwindow()
  local newframe = win:screen():frame_without_dock_or_menu()
  newframe.h = newframe.h / 2
  newframe.w = newframe.w / 2
  newframe.y = newframe.y + newframe.h
  win:setframe(newframe)
end
hotkey.new({"ctrl", "alt", "shift"}, "pagedown", windowBottomHalfLeftHalf):enable()
