if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    if (global.genocide == 0)
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 6
            dontplay = 1
            STR[0] = "* So did ELI."
            STR[1] = "* While MISHA assisted him."
            STR[2] = "* It's not long until you#  will encounter MISHA."
            STR[3] = "* The only thing that stands#  between the death of the#  Mann brothers and you."
            STR[4] = "* The only thing preventing#  the end of the battles of#  the Badlands."
            STR[5] = "* If you die, ELI and MISHA#  will finish the machine."
            STR[6] = "* And the battle will#  continue for all eternity."
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 0
            STR[0] = "* (Incoherent noises#  and screams in the#  background.)"
        }
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 0
        STR[0] = "* Click..."
    }
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    instance_destroy()
    global.mbmcallprogress = 6
    with (obj_pro_stopped)
        instance_destroy()
}

