var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 1, 2)
if __b__
    action_kill_object()
else
{
    global.encountersdisabled = 1
    if (progress == 0 && distance_to_object(obj_protagonist) < 64)
    {
        with (obj_music_player)
            musictrack = 124
        progress = 1
        alarm[1] = 30
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = 1
            instance_destroy()
        }
    }
    if (progress == 2 && (!instance_exists(obj_text_box)))
    {
        progress = 3
        image_index = 3
        with (obj_tm_dell2)
            image_index = 3
        alarm[2] = 30
    }
    if (progress == 4 && instance_exists(obj_text_box) && obj_text_box.N == 1)
    {
        with (obj_tm_dell2)
            image_index = 0
        image_index = 2
    }
    if (progress == 4 && (!instance_exists(obj_text_box)))
    {
        progress = 5
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 0
            textvoice = 85
            FACESTR[0] = 634
            STR[0] = "* n-"
        }
    }
    if (progress == 5 && (!instance_exists(obj_text_box)))
    {
        progress = 6
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 4
            textvoice = 86
            FACESTR[0] = 641
            STR[0] = "DELL!#I COULD KISS YOU!#BUT I WON'T!"
            FACESTR[1] = 641
            STR[1] = "NEITHER OF US HAVE#SHOWERED IN WEEKS!#WELL, JUST ME! STILL!"
            FACESTR[2] = 644
            STR[2] = "YOU THERE!#INTRUDER!"
            FACESTR[3] = 644
            STR[3] = "I WILL GIVE YOU#THREE SECONDS#TO SURRENDER!"
            FACESTR[4] = 644
            STR[4] = "AND I CAN'T EVEN#COUNT TO THREE!"
        }
    }
    if (progress == 6 && instance_exists(obj_text_box) && obj_text_box.N == 2)
    {
        with (obj_tm_dell2)
            image_index = 3
        image_index = 3
    }
    if (progress == 6 && (!instance_exists(obj_text_box)))
    {
        progress = 7
        alarm[3] = 90
    }
    if (progress == 8 && (!instance_exists(obj_text_box)))
    {
        if (x < 470)
        {
            if (x < 450)
            {
                with (obj_tm_dell2)
                    image_index = 0
            }
            else
            {
                with (obj_tm_dell2)
                    image_index = 1
            }
            x += 3
            sprite_index = spr_jane_right
            image_speed = 0.2
        }
        else
            progress = 9
    }
    if (progress == 9)
    {
        progress = 10
        sprite_index = spr_jane_stand
        image_speed = 0
        image_index = 3
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 2
            textvoice = 86
            FACESTR[0] = 644
            STR[0] = "DO NOT!"
            FACESTR[1] = 641
            STR[1] = "..."
            FACESTR[2] = 645
            STR[2] = "PLEASE?"
        }
    }
    if (progress == 10 && (!instance_exists(obj_text_box)))
    {
        if (x < 520)
        {
            x += 3
            sprite_index = spr_jane_right
            image_speed = 0.2
        }
        else
        {
            with (obj_tm_dell2)
            {
                instance_destroy()
                instance_create(x, y, obj_tm_dell3)
            }
            progress = 11
            with (obj_pro_stopped)
                instance_destroy()
            with (obj_music_player)
                musictrack = 125
            global.thundermountainprogress = 2
        }
    }
}

