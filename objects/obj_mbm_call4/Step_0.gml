if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    if (global.genocide == 0)
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 7
            dontplay = 1
            STR[0] = "* One night..."
            STR[1] = "* A family of a father, a#  mother and their child#  knocked on SANI's door."
            STR[2] = "* Sick and poor, they had#  nowhere to go."
            STR[3] = "* SANI took them in, and#  tried to cure their#  illness."
            STR[4] = "* He was unsuccessful to#  save the parents."
            STR[5] = "* SANI had an idea to save#  the child at least:"
            STR[6] = "* Another prototype of the#  machine he and ELI had#  worked on."
            STR[7] = "* He put it in the dying#  child."
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 6
            textvoice = 83
            FACESTR[0] = 628
            STR[0] = "* Well, my boss is really#  ****ing happy at least."
            FACESTR[1] = 627
            STR[1] = "* I hope these poor#  sods realise what#  " + "\"" + "playtime" + "\"" + " means."
            FACESTR[2] = 629
            STR[2] = "* This is gonna be#  torture for everyone#  involved."
            FACESTR[3] = 631
            STR[3] = "* But at least Miss#  Itchy Trigger Finger#  over 'ere is happy."
            FACESTR[4] = 632
            STR[4] = "* Right?"
            FACESTR[5] = 631
            STR[5] = "* Tell ya what, sunshine,#  if I see you aga-"
            FACESTR[6] = 632
            STR[6] = "* Oi! Get off of me,#  you idiot!"
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
    global.mbmcallprogress = 4
    with (obj_pro_stopped)
        instance_destroy()
}

