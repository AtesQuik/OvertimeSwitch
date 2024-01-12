var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 7, 2)
if __b__
    action_kill_object()
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
        instance_create(30, 500, obj_tm_dell6)
        with (obj_music_player)
            instance_destroy()
        audio_play_sound(snd_close1, 1, false)
        global.tmspikes1up = 1
        alarm[0] = 60
    }
    if (progress == 2 && (!instance_exists(obj_text_box)))
    {
        progress = 3
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = 96
            MAXSTR = 1
            FACESTR[0] = 652
            STR[0] = "* Right, you wanted#  it this way!"
            FACESTR[1] = 651
            STR[1] = "* Let's roll."
        }
    }
    if (progress == 3 && (!instance_exists(obj_text_box)))
    {
        progress = 4
        with (instance_create(0, 0, obj_music_player))
            musictrack = 127
        global.thundermountainprogress = 8
        with (obj_pro_stopped)
            instance_destroy()
        instance_destroy()
    }
}

