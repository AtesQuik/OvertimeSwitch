if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 8
        textvoice = 104
        FACESTR[0] = 667
        STR[0] = "* Mein Gott, he still#  keeps going!"
        FACESTR[1] = 667
        STR[1] = "* I tried to help you!"
        FACESTR[2] = 673
        STR[2] = "* Do you remember that#  button of immense#  suffering?"
        FACESTR[3] = 672
        STR[3] = "* It makes him feel#  excruciating pain#  whenever I press it!"
        FACESTR[4] = 671
        STR[4] = "* I have been pressing#  it non-stop!"
        FACESTR[5] = 672
        STR[5] = "* He must have...#  endured the pain?"
        FACESTR[6] = 671
        STR[6] = "* Nein...#* That's impossible!#* It has to work!"
        FACESTR[7] = 672
        STR[7] = "* I'll have to look#  into that."
        FACESTR[8] = 671
        STR[8] = "* Uh, see you!#* Good luck..."
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
    global.dustbowlcall6 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

