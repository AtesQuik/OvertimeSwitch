if (whitescreen < 1)
    whitescreen += 0.005
if (whitescreen == 1)
    instance_create(x, y, obj_room_fade_out)
scr_transition_when_ready()

