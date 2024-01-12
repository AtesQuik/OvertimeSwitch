if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    if (global.genocide == 0)
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 6
            dontplay = 1
            STR[0] = "* But the mercenaries got#  old, and they got replaced#  by younger ones."
            STR[1] = "* As the years passed, many#  of the new mercenaries#  passed on as well."
            STR[2] = "* The two team's medics,#  ELI of RED and SANI of BLU#  secretly worked together."
            STR[3] = "* They wanted to build a#  machine to prevent death."
            STR[4] = "* One that not only healed,#  but also brought people#  back from the dead."
            STR[5] = "* MISHA, the BLU medic's#  best friend, willingly#  served as their guinea pig."
            STR[6] = "* The two medics built a#  prototype of the machine#  and placed it in him."
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 8
            textvoice = 83
            FACESTR[0] = 628
            STR[0] = "* Alright, it got worse."
            FACESTR[1] = 628
            STR[1] = "* More and more people,#  and, uh...things...#  are floodin' in."
            FACESTR[2] = 631
            STR[2] = "* I'm not with ye at the#  moment, but if you are#  killin', stop it!"
            FACESTR[3] = 631
            STR[3] = "* Before this entire#  place explodes or#  somethin'."
            FACESTR[4] = 631
            STR[4] = "* Oi!"
            FACESTR[5] = 631
            STR[5] = "* Don't knock into me,#  I'm on the phone!"
            FACESTR[6] = 628
            STR[6] = "* Right, gotta hang up."
            FACESTR[7] = 628
            STR[7] = "* They're all just#  wandering in different#  directions now."
            FACESTR[8] = 632
            STR[8] = "* WHAT THE-#* THAT'S MY TV!"
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
    global.mbmcallprogress = 2
    with (obj_pro_stopped)
        instance_destroy()
}

