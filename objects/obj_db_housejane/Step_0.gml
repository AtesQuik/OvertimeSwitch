scr_turn_if_no_textbox()
if (tavishtalk == 1 && (!instance_exists(obj_text_box)))
{
    tavishtalk = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 99
        FACESTR[0] = 654
        STR[0] = "* Don't fret, boyo!#* You would have lost#  to me anyway!"
    }
}
if (tavishtalk == 2 && (!instance_exists(obj_text_box)))
{
    tavishtalk = 3
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 0
        textvoice = 86
        FACESTR[0] = 643
        STR[0] = "LOSE? TO YOU?#HAH! I AM THE BEST#AT BOWLING!"
    }
}
if (tavishtalk == 3 && (!instance_exists(obj_text_box)))
{
    tavishtalk = 4
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 1
        textvoice = 99
        FACESTR[0] = 661
        STR[0] = "* Throwing grenades#  into a crowd is#  not bowling!"
        FACESTR[1] = 654
        STR[1] = "* Tha's actually pretty#  dangerous for everyone#  involved!"
    }
}
if (tavishtalk == 4 && (!instance_exists(obj_text_box)))
{
    tavishtalk = 5
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 1
        textvoice = 86
        FACESTR[0] = 641
        STR[0] = "AH, IT'S FINE!#NONE OF THE KIDS#GOT HARMED!"
        FACESTR[1] = 644
        STR[1] = "THINGS LIKE THIS#BUILD CHARACTER!"
    }
}
if (tavishtalk == 5 && (!instance_exists(obj_text_box)))
{
    tavishtalk = 6
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 99
        FACESTR[0] = 654
        STR[0] = "* Oh me mother Tilly."
    }
}
if (tavishtalk == 6 && (!instance_exists(obj_text_box)))
{
    tavishtalk = 0
    with (obj_pro_stopped)
        instance_destroy()
}

