var __b__;
__b__ = action_if_variable(global.zepheniahprogress, 5, 2)
if __b__
    action_kill_object()
else if (itsover == 1 && talking == 1 && (!instance_exists(obj_text_box)))
{
    if (transparent == 1)
        audio_play_sound(snd_disappear, 1, false)
    if (transparent > 0)
        transparent -= 0.02
    else
    {
        with (obj_pro_stopped)
            instance_destroy()
        global.zepheniahprogress = 6
        with (instance_create(0, 0, obj_music_player))
            musictrack = 113
    }
}

