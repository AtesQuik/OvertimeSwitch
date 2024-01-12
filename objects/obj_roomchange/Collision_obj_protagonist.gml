if (!instance_exists(obj_room_fade_out))
    instance_create(x, y, obj_room_fade_out)
script_execute(scr_transition_when_ready)
