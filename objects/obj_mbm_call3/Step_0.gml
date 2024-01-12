if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    if (global.genocide == 0)
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 7
            dontplay = 1
            STR[0] = "* One day..."
            STR[1] = "* The RED team's strongest#  member fell."
            STR[2] = "* MISHA, being BLU teams's#  strongest fighter, was#  made an offer by Redmond."
            STR[3] = "* Fight for RED instead, for#  twice the amount of money#  that Blutarch paid him."
            STR[4] = "* After long consideration,#  MISHA accepted and left#  BLU to work for RED."
            STR[5] = "* Heartbroken, SANI left#  as well."
            STR[6] = "* He traveled back to the#  hospital he worked in#  before he joined BLU."
            STR[7] = "* While ELI and MISHA#  worked together, SANI#  worked alone."
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 8
            textvoice = 83
            FACESTR[0] = 632
            STR[0] = "* PUT THAT DOWN!#* NOW!"
            FACESTR[1] = 627
            STR[1] = "* Oh, 'old on."
            FACESTR[2] = 627
            STR[2] = "* I called ye again on#  accident."
            FACESTR[3] = 631
            STR[3] = "* I hope you're proud of#  what you've done, luv!"
            FACESTR[4] = 627
            STR[4] = "* At least some of them#  are turning into#  balloonicorns already."
            FACESTR[5] = 627
            STR[5] = "* So we'll just have to#  wait, and eventu-"
            FACESTR[6] = 632
            STR[6] = "* OH COME ON!#* THERE'S MORE?"
            FACESTR[7] = 631
            STR[7] = "* Just how many did ye#  murder, ya little brat?"
            FACESTR[8] = 628
            STR[8] = "* This is getting#  ridiculous."
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
    global.mbmcallprogress = 3
    with (obj_pro_stopped)
        instance_destroy()
}

