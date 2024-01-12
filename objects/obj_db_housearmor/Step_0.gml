if (tavishtalk == 1 && (!instance_exists(obj_text_box)))
{
    tavishtalk = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 4
        textvoice = 99
        FACESTR[0] = 656
        STR[0] = "* I didn't wear it#  on purpose!"
        FACESTR[1] = 661
        STR[1] = "* I must 'ave put it on#  while I was completely#  drunk yesterday!"
        FACESTR[2] = 653
        STR[2] = "* When I woke up this#  mornin', I didn't 'ave#  time to remove it,"
        FACESTR[3] = 653
        STR[3] = "* so I just grabbed me#  sword and ran to work!"
        FACESTR[4] = 653
        STR[4] = "* I'm so glad I managed#  to remove the helmet,#  I could barely breathe!"
    }
}
if (tavishtalk == 2 && (!instance_exists(obj_text_box)))
{
    tavishtalk = 0
    with (obj_pro_stopped)
        instance_destroy()
}

