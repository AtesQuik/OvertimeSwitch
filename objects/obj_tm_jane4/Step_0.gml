var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 3, 2)
if __b__
    action_kill_object()
else
{
    global.encountersdisabled = 1
    if (progress == 0 && distance_to_object(obj_protagonist) < 220)
    {
        instance_create(20, 150, obj_tm_wall_noreturn2)
        with (obj_music_player)
            musictrack = 124
        progress = 1
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = 1
            instance_destroy()
        }
    }
    if (progress == 1)
    {
        progress = 2
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 3
            textvoice = 86
            FACESTR[0] = 644
            STR[0] = "HAHA!"
            FACESTR[1] = 644
            STR[1] = "YOU MADE THE#BIGGEST MISTAKE#OF YOUR LIFE!"
            FACESTR[2] = 644
            STR[2] = "YOU STEPPED INTO#MY VICIOUS MAZE#OF MINES!"
            FACESTR[3] = 644
            STR[3] = "HOW WILL YOU GET#OUT OF THIS ONE?"
        }
    }
    if (progress == 2 && (!instance_exists(obj_text_box)))
    {
        progress = 3
        with (obj_pro_stopped)
            instance_destroy()
    }
    if (progress == 4)
    {
        progress = 5
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 5
            textvoice = 86
            FACESTR[0] = 643
            STR[0] = "WHAT?"
            FACESTR[1] = 643
            STR[1] = "IMPOSSIBLE!#AGAIN!"
            FACESTR[2] = 644
            STR[2] = "WELL, YOU DIDN'T#ACCOUNT FOR THE#FACT THAT I HAVE..."
            FACESTR[3] = 644
            STR[3] = "A REMOTE CONTROL#FOR THE MINES!"
            FACESTR[4] = 644
            STR[4] = "AND I'M GOING TO#BLOW ALL OF THEM#UP NOW!"
            FACESTR[5] = 644
            STR[5] = "I HAVE PREPARED#FOR EVERYTHING!"
        }
    }
    if (progress == 5 && (!instance_exists(obj_text_box)))
    {
        alarm[0] = 30
        progress = 6
    }
    if (progress == 7 && (!instance_exists(obj_text_box)))
    {
        if (x < 340)
            x += 2
        else
        {
            global.thundermountainprogress = 4
            with (obj_pro_stopped)
                instance_destroy()
            with (instance_create(0, 0, obj_music_player))
                musictrack = 125
        }
    }
}

