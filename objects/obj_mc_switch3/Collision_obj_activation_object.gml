if (global.mcswitch3 == 0)
{
    audio_play_sound(snd_step, 1, false)
    with (obj_activation_object)
        instance_destroy()
    global.mcswitch3 = 1
    if (!instance_exists(obj_text_box))
    {
        with (instance_create(x, y, obj_text_box))
        {
            if (global.mcswitch1 == 1 && global.mcswitch2 == 1)
                MAXSTR = 1
            else
                MAXSTR = 0
            STR[0] = "* (A third of the puzzle#  has been solved.)"
            STR[1] = "* (A door has opened.)"
        }
    }
}
