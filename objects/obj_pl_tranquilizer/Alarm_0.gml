progress = 1
alarm[1] = 60
crosshair1x = (global.soulxposition + irandom_range(choose(60, -60), 0))
crosshair1y = (global.soulyposition + irandom_range(-60, 0))
crosshair2x = (global.soulxposition + irandom_range(-20, 20))
crosshair2y = (global.soulyposition + irandom_range(-20, 20))
crosshair3x = (global.soulxposition + irandom_range(choose(60, -60), 60))
crosshair3y = (global.soulyposition + irandom_range(0, 60))
with (instance_create(crosshair1x, crosshair1y, obj_pl_crosshair))
    saved = other.saved
with (instance_create(crosshair2x, crosshair2y, obj_pl_crosshair))
    saved = other.saved
with (instance_create(crosshair3x, crosshair3y, obj_pl_crosshair))
    saved = other.saved

