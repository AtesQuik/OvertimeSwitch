var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 3, 2)
if __b__
    action_kill_object()
else
{
    if (place_meeting(x, y, obj_protagonist) && mineprogress == 0)
    {
        audio_play_sound(snd_step, 1, false)
        with (obj_music_player)
            instance_destroy()
        mineprogress = 1
        alarm[0] = 30
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = obj_protagonist.prodirection
            instance_destroy()
        }
    }
    if (mineprogress == 2 && (!instance_exists(obj_text_box)))
    {
        if (obj_tm_jane4.x > 250)
        {
            with (obj_tm_jane4)
            {
                sprite_index = spr_jane_left
                image_speed = 0.2
                x -= 2
            }
        }
        else
        {
            mineprogress = 3
            alarm[1] = 30
            audio_play_sound(snd_step, 1, false)
            with (obj_tm_jane4)
            {
                sprite_index = spr_jane_stand
                image_speed = 0
                image_index = 3
            }
        }
    }
    if (mineprogress == 4 && (!instance_exists(obj_text_box)))
    {
        mineprogress = 5
        alarm[2] = 90
        instance_create(obj_tm_jane4.x, obj_tm_jane4.y, obj_tm_explosion)
        with (obj_tm_jane4)
        {
            sprite_index = spr_jane_burned
            image_speed = 0.2
        }
    }
    if (mineprogress == 6 && (!instance_exists(obj_text_box)))
    {
        mineprogress = 7
        with (obj_tm_jane4)
            progress = 7
    }
}

