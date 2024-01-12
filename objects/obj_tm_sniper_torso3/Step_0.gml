var __b__;
__b__ = action_if_variable(global.thundermountainover, 1, 0)
if __b__
    action_kill_object()
else
{
    global.battleroom = 54
    if (global.thundermountainprogress == 10)
    {
        if (instance_exists(obj_protagonist) && (!instance_exists(obj_pro_stopped)))
        {
            instance_create(obj_protagonist.x, obj_protagonist.y, obj_pro_stopped)
            with (obj_pro_stopped)
                image_index = 2
            with (obj_protagonist)
                instance_destroy()
        }
        if (progress == 1)
        {
            progress = 2
            with (instance_create(x, y, obj_text_box))
            {
                textvoice = 96
                MAXSTR = 4
                FACESTR[0] = 651
                STR[0] = "* Right then."
                FACESTR[1] = 652
                STR[1] = "* I'll be at my van,#  if you need me."
                FACESTR[2] = 651
                STR[2] = "* I'm also gonna#  deactivate the spikes."
                FACESTR[3] = 652
                STR[3] = "* You're not much#  of a hazard, anyway."
                FACESTR[4] = 651
                STR[4] = "* Have a g'day, ma'am."
            }
        }
        if (progress == 2 && (!instance_exists(obj_text_box)))
        {
            if (y < 146)
                y += 1
            else
            {
                progress = 3
                alarm[1] = 30
            }
        }
        if (progress == 4)
        {
            progress = 5
            with (obj_pro_stopped)
                instance_destroy()
            global.thundermountainprogress = 11
            global.thundermountainover = 1
            with (instance_create(0, 0, obj_music_player))
                musictrack = 125
            audio_play_sound(snd_close1, 1, false)
            instance_destroy()
        }
    }
}

