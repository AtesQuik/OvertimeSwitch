var __b__;
__b__ = action_if_variable(global.mineprogress, 2, 2)
if __b__
    action_kill_object()
else
{
    if (progress == 1)
    {
        if (obj_m_tavishfall.x < 360)
            obj_m_tavishfall.x += 2
        else
        {
            progress = 2
            alarm[2] = 60
            with (obj_m_tavishfall)
            {
                stop = 1
                sprite_index = spr_tavish_stand
                image_speed = 0
                image_index = 1
            }
        }
    }
    if (progress == 3)
    {
        if (blackness < 1)
            blackness += 0.1
        else
        {
            progress = 4
            audio_play_sound(snd_fall, 1, false)
        }
    }
    if (progress == 4)
    {
        if (obj_pro_stopped.y < 360)
        {
            obj_pro_stopped.y += 2
            obj_pro_stopped.image_speed = 0.2
        }
        else
            progress = 5
    }
    if (progress == 5)
    {
        if (obj_m_tavishfall.x < 430)
        {
            with (obj_m_tavishfall)
            {
                stop = 0
                x += 1
                sprite_index = spr_tavish_right
                image_speed = 0.2
            }
        }
        else
        {
            progress = 6
            alarm[9] = 30
            with (obj_m_tavishfall)
            {
                stop = 1
                sprite_index = spr_tavish_stand
                image_speed = 0
                image_index = 1
            }
        }
    }
    if (progress == 7)
    {
        if (obj_m_tavishfall.x > 230)
        {
            with (obj_m_tavishfall)
            {
                stop = 0
                x -= 3
                sprite_index = spr_tavish_left
                image_speed = 0.2
            }
        }
        else
        {
            with (obj_m_tavishfall)
                instance_destroy()
            progress = 8
            instance_create(x, y, obj_room_fade_out)
        }
    }
    if (progress == 8)
    {
        if (global.transition == 1)
        {
            script_execute(scr_room_change)
            global.transition = 2
            global.mineprogress = 3
        }
    }
}

