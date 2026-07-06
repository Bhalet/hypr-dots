-- =========================
-- Startup Apps and Services
-- =========================


-- Defining variables
local scriptDir = "$HOME/.config/hypr/scripts"
local Userscripts = "$HOME/.config/hypr/UserScripts"


-- Whatever Progenitor has got
local function shell_quote(value)
  return "'" .. tostring(value):gsub("'", "'\\''") .. "'"
end
local function exec_once(cmd)
  -- Why this wrapper exists:
  -- 1) Enforce once-per-Hypr-session startup behavior using marker files.
  -- 2) Avoid startup race conditions by waiting for Wayland/Hypr sockets.
  -- 3) Capture per-command logs to simplify troubleshooting in user setups.

  local key = cmd:gsub("[^%w_.-]", "_"):sub(1, 80)
  local marker = "/tmp/hypr-lua-exec-once-" .. session .. "-" .. key
  local log = "/tmp/hypr-lua-startup-" .. key .. ".log"
  local readiness = "runtime=${XDG_RUNTIME_DIR:-/run/user/$(id -u)}; export XDG_RUNTIME_DIR=\"$runtime\"; for _ in $(seq 1 200); do if [ -n \"$WAYLAND_DISPLAY\" ] && [ -S \"$runtime/$WAYLAND_DISPLAY\" ]; then break; fi; for sock in \"$runtime\"/wayland-[0-9]*; do [ -S \"$sock\" ] || continue; case \"$(basename \"$sock\")\" in *awww*) continue ;; esac; export WAYLAND_DISPLAY=\"$(basename \"$sock\")\"; break 2; done; sleep 0.1; done; if [ -n \"$HYPRLAND_INSTANCE_SIGNATURE\" ]; then hypr_sock=\"$runtime/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket.sock\"; for _ in $(seq 1 200); do [ -S \"$hypr_sock\" ] && break; sleep 0.1; done; fi"
  local inner = readiness .. "; " .. cmd
  local script = "[ -e " .. shell_quote(marker) .. " ] || { touch " .. shell_quote(marker) .. " && sh -lc " .. shell_quote(inner) .. " >>" .. shell_quote(log) .. " 2>&1 & }"
  os.execute("sh -lc " .. shell_quote(script))
end



-- Edit Here
local startup_list = {

  -- Wallpaper
  "aww-daemon --format xrgb",

  -- Startup
  "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP",
  "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP",

  -- Startup apps
  "nm-applet --indicator",
  "swaync",
  "bluman-applet",
  "waybar",
  "fcitx5 -d",  

  -- Clipboard
  "wl-paste --type text --watch cliphist store",
  "wl-paste --type image --watch cliphist store",

 -- GTK
  "gsettings set org.gnome.desktop.interface gtk-theme Breeze-Dark",
  "gsettings set org.gnome.desktop.interface color-scheme \"prefer-dark\" ", 
}


local function run_startup_commands()
  for _, cmd in ipairs(startup_commands) do
    exec_once(cmd)
  end
end

if hl and hl.on then
  hl.on("hyprland.start", run_startup_commands)
else
  -- Compatibility fallback for older/limited runtimes without hl.on.
  run_startup_commands()
end


