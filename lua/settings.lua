-- ================
-- General Settings
-- ================

-- [NOTE]
-- Some settings are in decorations.lua
-- 0 = of; 1 = on; 2 = auto



-- Layout
hl.config({

  general = {
	  resize_on_border = true,
  	layout = "dwindle",
  },
  dwindle = {
	  preserve_spit = true,
  	smart_split = false,
  },
  master = {
	  new_status = "slave",
  	mfact = 0.7,
  },
  scrolling = {
	  fullscreen_on_one_column = true,
  	direction = "right",	
  },

})


-- Mouse and Keyboard (libinput basically)
hl.config({

  input = {

	  -- Keyboard
	  kb_layput = "us",
	  kb_variant = "",
	  kb_model ="",
	  kb_opttions = "",
	  kb_rules = "",
	  repeat_rate = 50,
	  repeat_delay = 300,
	  numlock_by_default = true,

	  -- Mouse
  	sensitivity = 0,          --Cursor Sensitivity (-1.0 to 1.0)
  	left_handed = false,
	  accel_profile = "flat",
  	--"flat" or "adaptive" or "" (EMPTY) means libinput's default mode
	  follow_mouse = 1,         --smoothness ig
  	float_switch_override_focus = false,

    touchpad = {
	    disable_while_typing = true,
	    natural_scroll = true,   --true opposite, false for same direction
	    clickfinger_behavior = false,
	    tap-to-click = true,
	    drag_lock = true,
	  },

    touchdevice = {
	    enabled = true,
  	},
    tablet = {
	    transform = 0,
	    left_handed = 0,
	  },
  },

  -- Some cursor options
  cursor = {
    sync_gsettings_theme = true,
    no_hardware_cursors = 2,
    enable_hyprcursor = false,
    warp_on_change_workspace = 2,
    inactive_timeout = 10,
    no_warp = true,
    warp_on_change_workspace = 2, --0 (Disabled), 1 (Enabled), 2 (Force) 
  }

  -- Dont know about these 
  gesture = {
  	workspace_swipe_distance = 300,
  	workspace_swipe_touch = false,
  	workspace_swipe_invert = true,
  	workspace_swipe_min_speed_to_force = 30,
    workspace_swipe_cancel_ratio = 0.5,
	  workspace_swipe_create_new = true,
	  workspace_swipe_direction_lock = true,
  	workspace_swipe_forever = false,
  	workspace_swipe_use_r = false,
    close_max_timeout = 100,
  },
    
})


hl.gesture({ finger = 3, direction = "horizontal", action = "workspace" })
hl.gesture({ finger = 3, direction = "up", mods = "SUPER", action = "fullscreen" })
hl.gesture({ finger = 3, direction = "down", mods = "ALT", action = "close" })
hl.gesures({ finger = 3, direction = "vertical" action = "cursor_zoom", zoom_level = 1, mode = "live" })


-- Others
hl.config({

  misc = {
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
    vrr = 2,
    mouse_move_enables_dpms = true,
    key_press_enables_dpms = true,
    enable_swallow = true,
    swallow_regex = "^(terminal)$",
    focus_on_activate = false,
    initial_workspace_tracking = 0,
    middle_click_paste = false,
    enable_anr_dialog = true,     --Application not Responding (ANR)
    anr_missed_pings = 12,        --ANR Threshold, default 5
  }

  ecosystem = {
    no_update_news = false,
    no_donation_nag = true,
    enforce_permissions = false,
    --enabling it will require to make a config which need to state certain permision to certain binary
  }

})


-- Graphics
hl.config({

  xwayland = {
    enabled = true,
    use_nearest_neighbor = true,
    force_zero_scaling = true,
  }

  opengl.nvidia_anti_flicker = true,

  render = {
    direct_scanout = 1,
    cm_auto_hdr = 1,              --1 for `cm, hdr`, 2 for `cm, hdredid`
    new_render_scheduling = false,--triple buffering
  }

}),


