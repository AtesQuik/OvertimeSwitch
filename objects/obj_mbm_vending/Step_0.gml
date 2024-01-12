if (global.textboxchoice == 1)
{
    global.textboxchoice = 0
    if (global.australium >= 70)
    {
        if (global.inventoryfull == 0)
        {
            global.australium -= 70
            script_execute(scr_item_add, "Badkit")
            audio_play_sound(snd_activate_save, 1, false)
            with (obj_text_box)
                instance_destroy()
        }
        else
        {
            with (obj_text_box)
            {
                MAXSTR = 0
                STR[0] = "* (Your backpack is full.)"
            }
        }
    }
    else
    {
        with (obj_text_box)
        {
            MAXSTR = 0
            STR[0] = "* (You do not have enough#  Australium for it.)"
        }
    }
}
if (global.textboxchoice == 2)
{
    global.textboxchoice = 0
    with (obj_text_box)
        instance_destroy()
}

