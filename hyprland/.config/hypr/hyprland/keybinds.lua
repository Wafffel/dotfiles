local terminal = "kitty"
local launcher = "rofi -show drun"
local browser = "brave --new-window"
local browserPrivate = "brave --incognito"
local systemMonitor = terminal .. " btop"
local powermenu = "bash ~/.config/hypr/scripts/powermenu.sh"
local terminalFileBrowser = terminal .. " yazi"
local guiFileBrowser = "nautilus"
local terminalEditor = terminal .. " nvim"
local editor = "code"
local musicPlayer = "spotify"
local soundManager = terminal .. " wiremix"
local noteApp = "obsidian"

local yt = browser .. " https://youtube.com"
local gemini = browser .. " https://gemini.google.com"
local github = browser .. " https://github.com/Wafffel?tab=repositories"
local gmail = browser.. " https://gmail.com"
local x = browser .. " https://x.com"

-- Applications
hl.bind("SUPER + T", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(launcher))
hl.bind("SUPER + X", hl.dsp.exec_cmd(powermenu))
hl.bind("SUPER + Y", hl.dsp.exec_cmd(systemMonitor))
hl.bind("SUPER + SHIFT + F", hl.dsp.exec_cmd(guiFileBrowser))
hl.bind("SUPER + F", hl.dsp.exec_cmd(terminalFileBrowser))
hl.bind("SUPER + N", hl.dsp.exec_cmd(terminalEditor))
hl.bind("SUPER + C", hl.dsp.exec_cmd(editor))
hl.bind("SUPER + M", hl.dsp.exec_cmd(musicPlayer))
hl.bind("SUPER + B", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd(browserPrivate))
hl.bind("SUPER + W", hl.dsp.exec_cmd(soundManager))
hl.bind("SUPER + O", hl.dsp.exec_cmd(noteApp))

-- Web applications
hl.bind("SUPER + SHIFT + Y", hl.dsp.exec_cmd(yt))
hl.bind("SUPER + SHIFT + A", hl.dsp.exec_cmd(gemini))
hl.bind("SUPER + SHIFT + G", hl.dsp.exec_cmd(github))
hl.bind("SUPER + SHIFT + E", hl.dsp.exec_cmd(gmail))
hl.bind("SUPER + SHIFT + X", hl.dsp.exec_cmd(x))

-- Screenshots
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m output -o ~/Pictures/hyprshot"))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m window -o ~/Pictures/hyprshot"))
hl.bind("SUPER + SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures/hyprshot"))

-- Record screen
hl.bind("SUPER + R", hl.dsp.exec_cmd("bash ~/.config/hypr/scripts/record_screen.sh"))

-- Layout
hl.bind("F11", hl.dsp.window.fullscreen())
hl.bind("SUPER + P", hl.dsp.window.pseudo())
hl.bind("SUPER + V", hl.dsp.window.float())

-- Move focus with mainMod + arrow keys
hl.bind("SUPER + left", hl.dsp.focus({direction = "left"}))
hl.bind("SUPER + right", hl.dsp.focus({direction = "right"}))
hl.bind("SUPER + up", hl.dsp.focus({direction = "up"}))
hl.bind("SUPER + down", hl.dsp.focus({direction = "down"}))

-- Move focus with mainMod + vi keys
hl.bind("SUPER + H", hl.dsp.focus({direction = "left"}))
hl.bind("SUPER + L", hl.dsp.focus({direction = "right"}))
hl.bind("SUPER + K", hl.dsp.focus({direction = "up"}))
hl.bind("SUPER + J", hl.dsp.focus({direction = "down"}))

-- Switch workspaces with mainMod + [0-9]
hl.bind("SUPER + 1", hl.dsp.focus({workspace = 1}))
hl.bind("SUPER + 2", hl.dsp.focus({workspace = 2}))
hl.bind("SUPER + 3", hl.dsp.focus({workspace = 3}))
hl.bind("SUPER + 4", hl.dsp.focus({workspace = 4}))
hl.bind("SUPER + 5", hl.dsp.focus({workspace = 5}))
hl.bind("SUPER + 6", hl.dsp.focus({workspace = 6}))
hl.bind("SUPER + 7", hl.dsp.focus({workspace = 7}))
hl.bind("SUPER + 8", hl.dsp.focus({workspace = 8}))
hl.bind("SUPER + 9", hl.dsp.focus({workspace = 9}))
hl.bind("SUPER + 0", hl.dsp.focus({workspace = 10}))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({workspace = 1}))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({workspace = 2}))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({workspace = 3}))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({workspace = 4}))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({workspace = 5}))
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({workspace = 6}))
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({workspace = 7}))
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({workspace = 8}))
hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({workspace = 9}))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({workspace = 10}))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind("SUPER + mouse_down", hl.dsp.focus({workspace = "e-1"}))
hl.bind("SUPER + mouse_up", hl.dsp.focus({workspace = "e+1"}))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
