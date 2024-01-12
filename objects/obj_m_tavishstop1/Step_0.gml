var __b__;
__b__ = action_if_variable(global.mineprogress, 0, 2)
if __b__
    action_kill_object()
else
{
    if (progress == 1)
    {
        with (instance_create(0, 0, obj_music_player))
            musictrack = 135
        if (obj_view_parent.y > 120)
            obj_view_parent.y -= 1
        else
        {
            progress = 2
            alarm[1] = 60
        }
    }
    if (progress == 3 && (!instance_exists(obj_m_jane)))
    {
        with (obj_m_tavish1)
        {
            sprite_index = spr_tavish_right
            image_speed = 0.2
        }
        if (obj_m_tavish1.x < 340)
            obj_m_tavish1.x += 1
        else
            progress = 4
    }
    if (progress == 4)
    {
        with (obj_m_tavish1)
            instance_destroy()
        if (obj_view_parent.y < obj_pro_stopped.y)
            obj_view_parent.y += 1
        else
        {
            progress = 5
            global.mineprogress = 1
            with (obj_pro_stopped)
                instance_destroy()
            instance_destroy()
            with (obj_music_player)
                musictrack = 133
        }
    }
}

