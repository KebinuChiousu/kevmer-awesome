local config = require('modules.config')
local freedesktop = require("freedesktop")

-- Create a launcher widget and a main menu
local myawesomemenu = {
    --{ "hotkeys", function() return false, hotkeys_popup.show_help end },
    { "manual", config.terminal .. " -e man awesome" },
    { "edit config", string.format("%s %s", config.editor, awesome.conffile) },
    { "edit theme", string.format("%s %s", config.editor, ".config/awesome/themes/cesious/theme.lua") },
    { "restart", awesome.restart }
}

local myexitmenu = {
    { "log out", function() awesome.quit() end, "/usr/share/icons/Arc-Maia/actions/24@2x/system-log-out.png" },
    { "suspend", "systemctl suspend", "/usr/share/icons/Arc-Maia/actions/24@2x/gnome-session-suspend.png" },
    { "hibernate", "systemctl hibernate", "/usr/share/icons/Arc-Maia/actions/24@2x/gnome-session-hibernate.png" },
    { "reboot", "systemctl reboot", "/usr/share/icons/Arc-Maia/actions/24@2x/view-refresh.png" },
    { "shutdown", "poweroff", "/usr/share/icons/Arc-Maia/actions/24@2x/system-shutdown.png" }
}

local mymainmenu = freedesktop.menu.build({
    before = {
        { "Terminal", config.terminal, "/usr/share/icons/Moka/32x32/apps/utilities-terminal.png" },
        { "Browser", config.browser, "/usr/share/icons/hicolor/24x24/apps/chromium.png" },
        { "Files", config.filemanager, "/usr/share/icons/Arc-Maia/places/32/user-home.png" },
        -- other triads can be put here
    },
    after = {
        { "Awesome", myawesomemenu, "/usr/share/awesome/icons/awesome16.png" },
        { "Exit", myexitmenu, "/usr/share/icons/Arc-Maia/actions/24@2x/system-restart.png" },
        -- other triads can be put here
    }
})

-- Menubar configuration
menubar.utils.terminal = config.terminal -- Set the terminal for applications that require it
-- }}}

local mainmenu = 
{
  launcher = awful.widget.launcher({ image = beautiful.awesome_icon,
                          menu = mymainmenu 
                        }),
  menu = mymainmenu
  
}
                                     
return mainmenu


