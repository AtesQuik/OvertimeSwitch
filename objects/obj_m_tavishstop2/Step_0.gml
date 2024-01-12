var __b__;
__b__ = action_if_variable(global.mineprogress, 1, 2)
if __b__
{
    if (global.mineevading == 0)
        instance_destroy()
}
else if (progress == 1)
{
    if (obj_m_tavishcart.x < obj_pro_stopped.x)
    {
        obj_m_tavishcart.x += 1
        obj_m_tavishcart.image_speed = 0.2
    }
    else
    {
        audio_play_sound(snd_fearsting, 1, false)
        with (obj_music_player)
            instance_destroy()
        obj_m_tavishcart.image_speed = 0
        progress = 2
        alarm[1] = 60
    }
}

