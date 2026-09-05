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
})
