var __b__;
__b__ = action_if_variable(global.ingredientsreleased, 60, 1)
if __b__
{
    if instance_exists(obj_menu)
    {
        with (obj_menu)
            instance_destroy()
    }
    if (movedirection == 0)
    {
        if (x < 380)
            x += spd
        else
        {
            movedirection = 1
            alarm[4] = 1
        }
    }
    if (movedirection == 1)
    {
        if (x > 140)
            x -= spd
        else
        {
            movedirection = 0
            alarm[4] = 1
        }
    }
}
else
{
    if (progress == 0 && (!instance_exists(obj_db_condiment)) && (!instance_exists(obj_db_bundog)))
    {
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = obj_protagonist.prodirection
            instance_destroy()
        }
        if (obj_db_disp4.x < 290)
            obj_db_disp4.x += 3
        if (obj_view_parent.x < 240)
            obj_view_parent.x += 2
        if (obj_view_parent.x >= 240 && obj_db_disp4.x >= 290)
        {
            alarm[1] = 1
            progress = 1
            with (obj_music_player)
                instance_destroy()
        }
    }
    if (progress == 2 && instance_exists(obj_text_box))
    {
        with (obj_text_box)
        {
            if (voicenow == 1)
                textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        }
    }
    if (progress == 2 && (!instance_exists(obj_text_box)))
    {
        if (global.ingredients > 40)
            progress = 3
        else
            progress = 5
    }
    if (progress == 3 && (!instance_exists(obj_text_box)))
    {
        if (x < 344)
            x += 2
        if (y < 136)
            y += 2
        if (y >= 136 && x >= 344)
        {
            progress = 4
            alarm[2] = 15
        }
    }
    if (progress == 5)
    {
        progress = 6
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            MAXSTR = 5
            STR[0] = "* DON'T YOU FEEL SO MUCH#  CLOSER TO ME ALREADY?#* BECAUSE I CERTAINLY DO!"
            STR[1] = "* BUT THIS WAS JUST PART#  ONE OF OUR DATE."
            STR[2] = "* OH?#* I DIDN'T MENTION?#* WE'RE ON A DATE NOW!"
            STR[3] = "* WELL, I'LL SEE YOU LATER."
            STR[4] = "* FOR MORE DATE-RELATED#  EXPERIENCES!"
            STR[5] = "* GOODBYE!"
        }
    }
    if (progress == 6 && instance_exists(obj_text_box))
    {
        with (obj_text_box)
        {
            if (voicenow == 1)
                textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        }
    }
    if (progress == 6 && (!instance_exists(obj_text_box)))
    {
        if (x < 500)
            x += 3
        else
        {
            progress = 7
            audio_play_sound(snd_lift, 1, false)
        }
    }
    if (progress == 7)
    {
        if (obj_db_bowl.y > -10)
            obj_db_bowl.y -= 4
        else
            progress = 8
    }
    if (progress == 8)
    {
        if (obj_view_parent.x > obj_pro_stopped.x)
            obj_view_parent.x -= 3
        else
            progress = 9
    }
    if (progress == 9)
    {
        audio_play_sound(snd_close1, 1, false)
        with (obj_db_spikes2)
        {
            instance_destroy()
            instance_create(x, y, obj_db_spikes1)
        }
        with (obj_pro_stopped)
            instance_destroy()
        with (obj_db_bowl)
            instance_destroy()
        with (obj_music_player)
            musictrack = 141
        if (global.ingredients > 40)
            instance_create(344, 120, obj_db_getdog)
        global.dbprogress = 3
        instance_destroy()
    }
}

