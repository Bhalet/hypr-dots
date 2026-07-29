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

    shadow = {
    

    }
    
  }
})
