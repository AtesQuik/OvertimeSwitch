if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    if (global.genocide == 0)
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 9
            dontplay = 1
            STR[0] = "* The next day."
            STR[1] = "* The next day..."
            STR[2] = "* ..."
            STR[3] = "* The child died. "
            STR[4] = "* SANI was distraught."
            STR[5] = "* He buried the bodies of#  the family under his#  favorite flowers."
            STR[6] = "* As war raged on in the#  Badlands, a war raged on#  in SANI."
            STR[7] = "* He shut himself in."
            STR[8] = "* He neither let anyone in,#  nor anyone out."
            STR[9] = "* He made the decision to#  work on the machine until#  it finally worked."
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 5
            textvoice = 84
            STR[0] = "* This is my phone,#  ya brute!#* Give it back!"
            STR[1] = "* No, ye can not talk to 'er!"
            STR[2] = "* I dun' care if she#  killed you and yer#  brother!"
            STR[3] = "* That's not my problem,#  is it?"
            STR[4] = "* What do you mean,#  " + "\"" + "I am gonna make it your#  problem?" + "\""
            STR[5] = "* Oi!#* Hands off!"
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
    global.mbmcallprogress = 5
    with (obj_pro_stopped)
        instance_destroy()
}

