-- PROGRAMS --
MainMod     = "SUPER"
Terminal    = "kitty"
FileManager = "pcmanfm"
Menu        = "rofi -show run"
Browser     = "brave"

-- ENVIRONMENT VARIABLES --
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- MONITORS --
hl.monitor({
    output   = "",
    mode     = "2560x1440@144",
    position = "auto",
    scale    = "auto",
})

-- AUTOSTART --
hl.on("hyprland.start", function ()
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  hl.exec_cmd("awww-daemon")
  hl.exec_cmd("waybar")
end)

-- INPUT --
hl.config({
    input = {
        follow_mouse = 1,
        sensitivity = -0.25,
        accel_profile = "flat",
    },
})

require("modules.hotkeys")
require("modules.windows")
require("modules.animations")
require("modules.looks")
