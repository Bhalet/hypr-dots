-- ==============
-- Monitor config
-- ==============

-- Main monitor (for laptop)
hl.monitor({
    output = "eDPI-1",
    mode = "preferred",
    position = "0x0",
    scale = "1",
})

-- HDMI
hl.monitor({
    output = "HBMI-A-1",
    mode = "preferred",
    position = "auto",
    scale = "1",
    mirror = "eDPI-1",
})

hl.config({
    debug = {vfr = true,},
})
