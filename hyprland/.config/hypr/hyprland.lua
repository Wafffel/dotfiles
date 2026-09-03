-- COLORS --
require("mocha")

-- MONITORS --
require("monitors")

-- KEYBINDINGS --
require("keybindings")

hl.on("hyprland.start", function()
    hl.exec_cmd("waybar")
    hl.exec_cmd("swaync")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("xremap ~/.config/xremap/config.yml")
end)

-- ENVIRONMENT VARIABLES --

hl.env("XCURSOR_SIZE",24)
hl.env("HYPRCURSOR_SIZE",24)

-- LOOK AND FEEL --

hl.config({
  general = {
    gaps_in = 2,
    gaps_out = 2,
    border_size = 1,
    allow_tearing = false,
    layout = "dwindle",
    col = {
      active_border = SAPPHIRE,
      inactive_border = INACTIVE_WINDOW_BORDER,
    },
  },
  decoration = {
    rounding_power = 0,
  },
  animations = {
    enabled = false,
  },
  dwindle = {
    preserve_split = true,
    force_split = 2,
  },
  misc = {
    force_default_wallpaper = 0,
    disable_hyprland_logo = true,
  },
  ecosystem = {
    no_update_news = true,
    no_donation_nag = true,
  },
  input = {
    kb_layout = "pl",
    follow_mouse = 1,
    sensitivity = 0,
    touchpad = {
        natural_scroll = false
    },
  },
})

-- WINDOWS AND WORKSPACES --

hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})
