var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 5, 2)
if __b__
{
    action_kill_object()
    __b__ = action_if_variable(global.genocide, 1, 0)
    if __b__
    {
        global.tmspikes2up = 0
        __b__ = action_if_variable(global.thundermountainprogress, 9, 1)
        if __b__
            global.thundermountainprogress = 9
    }
}
else
{
    if (place_meeting(x, y, obj_protagonist) && progress == 0)
    {
        progress = 1
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = 2
            instance_destroy()
        }
        with (obj_music_player)
            instance_destroy()
    }
    if (progress == 1)
    {
        if (obj_view_parent.y > 120)
        {
            with (obj_view_parent)
                y -= 3
        }
        else
        {
            progress = 2
            alarm[0] = 30
        }
    }
    if (progress == 3)
    {
        if (obj_tm_sniper_torso.y > 120)
            obj_tm_sniper_torso.y -= 1
        else
            progress = 4
    }
    if (progress == 4)
    {
        progress = 5
        alarm[1] = 30
    }
    if (progress == 6 && (!instance_exists(obj_text_box)))
    {
        if (obj_tm_sniper_torso_rifle.y > 120)
            obj_tm_sniper_torso_rifle.y -= 1
        else
            progress = 7
    }
    if (progress == 7 && (!instance_exists(obj_text_box)))
    {
        progress = 8
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = 96
            MAXSTR = 1
            FACESTR[0] = 652
            STR[0] = "* I'll give ye a#  quick warning shot."
            FACESTR[1] = 651
            STR[1] = "* Don't look directly#  into the laser."
        }
    }
    if (progress == 8 && (!instance_exists(obj_text_box)))
    {
        if (obj_view_parent.y < obj_pro_stopped.y)
            obj_view_parent.y += 4
        else
            progress = 9
    }
    if (progress == 9)
    {
        progress = 10
        instance_create(160, 520, obj_tm_sniper_laser1)
    }
}

