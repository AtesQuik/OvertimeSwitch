var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 0, 2)
if __b__
    action_kill_object()
else
{
    global.encountersdisabled = 1
    if (progress == 0 && distance_to_object(obj_protagonist) < 128)
    {
        with (obj_music_player)
            instance_destroy()
        progress = 1
        moving = 1
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = 1
            instance_destroy()
        }
        alarm[0] = 30
    }
    if (moving == 1)
    {
        with (obj_view_parent)
            x += 1
    }
    if (progress == 2)
    {
        progress = 3
        alarm[1] = 90
        instance_create((x + 9), (y - 1), obj_sentry_exc)
        instance_create(1260, 180, obj_tm_dell1)
    }
    if (progress == 4 && (!instance_exists(obj_text_box)))
    {
        with (obj_pro_stopped)
            image_index = 3
        moving = 2
        progress = 5
        alarm[2] = 30
    }
    if (moving == 2)
    {
        with (obj_view_parent)
            x -= 2
    }
    if (progress == 6 && (!instance_exists(obj_text_box)))
    {
        progress = 7
        with (obj_tm_dell1)
            image_index = 0
        audio_play_sound(snd_badumtsh, 1, false)
        alarm[4] = 60
        dontdraw = 1
    }
    if (progress == 8 && (!instance_exists(obj_text_box)))
    {
        if (obj_pro_stopped.x < 2040)
        {
            with (obj_pro_stopped)
            {
                image_speed = 0.3
                sprite_index = spr_pro_right
                x += 3
            }
        }
        else
        {
            with (obj_pro_stopped)
            {
                image_speed = 0
                sprite_index = spr_pro_stand
                image_index = 1
            }
        }
        if (obj_view_parent.x < obj_pro_stopped.x)
        {
            with (obj_view_parent)
                x += 3
        }
        if (obj_tm_dell1.x < 1980)
        {
            with (obj_tm_dell1)
            {
                image_speed = 0.3
                sprite_index = spr_dell_right
                x += 3
            }
        }
        else
        {
            with (obj_tm_dell1)
            {
                image_speed = 0
                sprite_index = spr_dell_stand
                image_index = 1
                x += 3
            }
            progress = 9
        }
    }
    if (progress == 9)
    {
        progress = 10
        alarm[5] = 30
    }
    if (progress == 11 && (!instance_exists(obj_text_box)))
    {
        if (obj_pro_stopped.y > 140)
        {
            with (obj_pro_stopped)
            {
                y -= 1
                sprite_index = spr_pro_up
                image_speed = 0.1
            }
        }
        else
        {
            progress = 12
            with (obj_pro_stopped)
            {
                sprite_index = spr_pro_stand
                image_speed = 0
                image_index = 0
            }
            alarm[6] = 30
        }
    }
}

