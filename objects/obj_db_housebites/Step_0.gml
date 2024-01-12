if (tavishbites == 1 && (!instance_exists(obj_text_box)))
{
    tavishbites = 2
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 1
        textvoice = 86
        FACESTR[0] = 642
        STR[0] = "OF COURSE!#HE'S THE CUTEST!"
        FACESTR[1] = 642
        STR[1] = "DO YOU WANT TO#PET HIM?"
    }
}
if (tavishbites == 2 && (!instance_exists(obj_text_box)))
{
    tavishbites = 3
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 99
        FACESTR[0] = 658
        STR[0] = "* Nah, thanks...#* Last time I did, I got#  a terrible rash!"
    }
}
if (tavishbites == 3 && (!instance_exists(obj_text_box)))
{
    tavishbites = 4
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 3
        textvoice = 86
        FACESTR[0] = 643
        STR[0] = "WHAT?!?#OH MY GOD!#THAT'S TERRIBLE!"
        FACESTR[1] = 643
        STR[1] = "LIEUTENANT BITES!"
        FACESTR[2] = 641
        STR[2] = "WHY DID YOU NEVER#GIVE ME A RASH?"
        FACESTR[3] = 646
        STR[3] = "DO YOU NOT LOVE ME?"
    }
}
if (tavishbites == 4 && (!instance_exists(obj_text_box)))
{
    tavishbites = 5
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 99
        FACESTR[0] = 660
        STR[0] = "* ..."
    }
}
if (tavishbites == 5 && (!instance_exists(obj_text_box)))
{
    tavishbites = 0
    with (obj_pro_stopped)
        instance_destroy()
}

