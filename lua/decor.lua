-- ===========
-- Decorations
-- ===========


-- Sourcing Colour (Lets hope it works) 
local stateDir = os.getenv("XDG_STATE_HOME") or (os.getenv("HOME") .. "/.local/state")
dofile(stateDir .. "/wallust-hyprland.lua")

-- Start here
hl.config({

  -- Basic Border and spacing
  general = {
    border_size = 1,
    gaps_in = 2,
    gap_out = 4,
    col = {activeborder = colour12, inactive_border = colour10,},
  }

  decoration = {
    rounding = 5,
    
    active_opacity = 1.0,
    inactive_opacity = 0.9,
    fullscreen_opacity = 1.0,

    dim_inactive = true,
    dim_strength = 0.1,
    dim_special = 0.8,

    motion_blur.enable = false
    wobble.enable = false

    shadow = {
      enabled = false,
      range = 3,
      render_power = 1

      colour = "colour12"
      colour_inactive = "colour10"
    }

    blur = {
      enable = true,
      size = 4,
      passes = 2,
      ignore_opacity = true,
      new_optimisations = true,
      special = true,
      popups = true,
      input_methods = false,

    }
  }

  group = {
    col.border_active = "color15"
    
    groupbar = {
      col.active = "colour0"
    }
  
  }


})
