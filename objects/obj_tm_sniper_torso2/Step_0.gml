var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 8, 2)
if __b__
    action_kill_object()
else
{
    if (global.thundermountainprogress == 8)
    {
        global.battleroom = 53
        if (instance_exists(obj_protagonist) && (!instance_exists(obj_tm_sniper_laser2)) && (!instance_exists(obj_tm_sniper_bullet2)))
        {
            if (distance_to_object(obj_protagonist) > 160 && shooting == 1)
                instance_create(160, 180, obj_tm_sniper_laser2)
            else if (distance_to_object(obj_protagonist) < 60)
            {
                with (obj_music_player)
                    instance_destroy()
                progress = 1
                with (obj_protagonist)
                {
                    instance_create(x, y, obj_pro_stopped)
                    obj_pro_stopped.image_index = obj_protagonist.prodirection
                    instance_destroy()
                }
                with (instance_create(x, y, obj_text_box))
                {
                    textvoice = 96
                    MAXSTR = 3
                    FACESTR[0] = 652
                    STR[0] = "* Bloody hell...#* Cheeky lass, aren't ya?"
                    FACESTR[1] = 651
                    STR[1] = "* Well, alright.#* I'll give you#  this one victory."
                    FACESTR[2] = 652
                    STR[2] = "* But I tell ya:"
                    FACESTR[3] = 651
                    STR[3] = "* Come closer, and I'll#  shoot yer brains out#  for good."
                }
            }
        }
    }
    if (progress == 1 && (!instance_exists(obj_text_box)))
    {
        with (obj_pro_stopped)
            instance_destroy()
        global.thundermountainprogress = 9
        global.tmspikes1up = 0
        with (instance_create(0, 0, obj_music_player))
            musictrack = 125
    }
}

