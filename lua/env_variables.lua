-- =====================
-- Environment variables
-- =====================


-- Toolkit Backend
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("CLUTTER_BACKEND", "wayland")

-- XDG specifications
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")

-- Look at ~/.local/bin first
-- hl.env("PATH", "$HOME/.local/bin:/usr/local/bin:/usr/bin:/bin:/sbin")

-- QT variables
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
--hl.env("QT_STYLE_OVERRIDE", "kvantum")

-- XWayland ig
hl.env("GDK_SCALE", "1")
hl.env("QT_SCALE_FACTOR", "1")
hl.env("GDK_DPI_SCALE", "1")

-- Use default apps (file manager, editor etc.)
hl.env("GTK_USE_PORTAL", "1")

-- ani-cli
hl.env("ANI_CLI_PLAYER", "1")

-- Cursors
hl.env("XCURSOR_THEME", "Miku_Cursor")
hl.env("XCURSOR_SIZE", "48")
hl.env("HYPRCURSOR_THEME", "")
hl.env("HYPRCURSOR_SIZE", "")

-- Firefox
hl.env("MOZ_ENABLE_WAYLAND", "1")

-- Electron
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")



-- ======
-- NVIDIA
-- ======

-- Primary Setup. --Required
--hl.env("LIBVA_DRIVER_NAME", "nvidia")
--hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
--hl.env("GSK_RENDERER", "ngl")

-- Video Acceleration API
--hl.env("NVD_BACKEND", "direct")

-- Additional ENV's for nvidia. Caution, activate with care
--hl.env("GBM_BACKEND", "nvidia-drm")

--hl.env("__GL_GSYNC_ALLOWED", "1") --adaptive Vsync
--hl.env("__NV_PRIME_RENDER_OFFLOAD", "1")
--hl.env("__VK_LAYER_NV_optimus", "NVIDIA_only")
--hl.env("WLR_DRM_NO_ATOMIC", "1")

-- FOR VM and POSSIBLY NVIDIA
-- mesa rendering
--hl.env("LIBGL_ALWAYS_SOFTWARE", "1") --Warning. May crash hyprland
--hl.env("WLR_RENDERER_ALLOW_SOFTWAR", "1")

-- NVIDIA firefox
--hl.env("MOZ_DISABLE_RDD_SANDBOX", "1")
--hl.env("EGL_PLATFORM", "wayland")

