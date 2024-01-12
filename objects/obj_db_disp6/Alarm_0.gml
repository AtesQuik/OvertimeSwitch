progress += 1
if (progress == 1)
{
    path_start(path_dispenser, 0.5, path_action_stop, 1)
    image_speed = 0.1
    sprite_index = spr_s_disp_sing1
    alarm[0] = 106
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "Oh my love"
}
if (progress == 2)
{
    sprite_index = spr_s_disp_sing2
    alarm[0] = 136
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "Let's run away"
}
if (progress == 3)
{
    sprite_index = spr_s_disp_sing1
    alarm[0] = 115
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "We could just"
}
if (progress == 4)
{
    sprite_index = spr_s_disp_sing2
    alarm[0] = 127
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "Go any way"
}
if (progress == 5)
{
    sprite_index = spr_s_disp_sing1
    alarm[0] = 103
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "Leave alone"
}
if (progress == 6)
{
    sprite_index = spr_s_disp_sing2
    alarm[0] = 136
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "The two Mann Bros."
}
if (progress == 7)
{
    sprite_index = spr_s_disp_sing1
    alarm[0] = 106
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "I'd lose my job"
}
if (progress == 8)
{
    sprite_index = spr_s_disp_sing3
    alarm[0] = 136
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "If you killed my boss"
}
if (progress == 9)
{
    sprite_index = spr_s_disp_talk
    alarm[0] = 106
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "Misha will"
}
if (progress == 10)
{
    sprite_index = spr_s_disp_sing3
    alarm[0] = 135
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "Punch in your face"
}
if (progress == 11)
{
    sprite_index = spr_s_disp_sing1
    alarm[0] = 100
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "It'll hurt"
}
if (progress == 12)
{
    sprite_index = spr_s_disp_sing3
    alarm[0] = 136
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "And then you'll#die a lot"
}
if (progress == 13)
{
    sprite_index = spr_s_disp_sing1
    alarm[0] = 103
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "It's not unusual"
}
if (progress == 14)
{
    sprite_index = spr_s_disp_sing2
    alarm[0] = 136
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "to see me cry"
}
if (progress == 15)
{
    sprite_index = spr_s_disp_sing1
    alarm[0] = 87
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "But I would"
}
if (progress == 16)
{
    sprite_index = spr_s_disp_sing3
    with (instance_create((__view_get( e__VW.XView, (0 << 0) ) + 20), (__view_get( e__VW.YView, (0 << 0) ) + 120), obj_db_singsong))
        textstring = "If you were to die"
}

