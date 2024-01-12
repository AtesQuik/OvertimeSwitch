var __b__;
__b__ = action_if_variable(global.transition, 0, 0)
if (!__b__)
{
    scr_battlevariables()
    global.randomencounter = 0
    action_create_object(obj_room_fade_in, 0, 0)
    global.transition = 0
    holdesc = 0
}

