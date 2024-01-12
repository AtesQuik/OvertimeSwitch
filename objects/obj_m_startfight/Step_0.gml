var __b__;
__b__ = action_if_variable(global.mineprogress, 5, 2)
if __b__
    action_kill_object()
else
{
    if (progress == 1)
    {
        with (obj_music_player)
            instance_destroy()
        progress = 2
        if (global.janekilled == 0)
        {
            with (instance_create(x, y, obj_text_box))
            {
                MAXSTR = 0
                textvoice = 99
                FACESTR[0] = 656
                STR[0] = "* LEEEEET'S DO IIIIIIT!!!"
            }
        }
        else
        {
            with (instance_create(x, y, obj_text_box))
            {
                MAXSTR = 0
                textvoice = 99
                FACESTR[0] = 657
                STR[0] = "* FOR JAAAAAAAAAAAAAANE!"
            }
        }
    }
    if (progress == 2 && (!instance_exists(obj_text_box)))
    {
        instance_create(obj_pro_stopped.x, 60, obj_m_demodrop)
        global.mineprogress = 6
        instance_destroy()
    }
}

