-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
local modkey = "Mod4"

local terminal = "terminator"
local browser = "chromium"
local filemanager = "pcmanfm"
local editor = "geany"

local config =
{
    modkey = modkey,
    terminal = terminal,
    browser = browser,
    filemanager = filemanager,
    editor = editor
}

return config