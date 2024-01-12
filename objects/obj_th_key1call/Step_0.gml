if (progress == 4 && (!instance_exists(obj_text_box)))
{
    progress = 5
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 5
        textvoice = 86
        FACESTR[0] = 641
        STR[0] = "WHY ARE YOU#CALLING ME?"
        FACESTR[1] = 641
        STR[1] = "ARE YOU LOST?"
        FACESTR[2] = 641
        STR[2] = "ARE YOU SCARED?"
        FACESTR[3] = 641
        STR[3] = "ARE YOU HURT?"
        FACESTR[4] = 641
        STR[4] = "GOTTA GET A GRIP!"
        FACESTR[5] = 641
        STR[5] = "GAAAAAAAARGH...."
    }
}
if (progress == 5 && (!instance_exists(obj_text_box)))
{
    if (janeface < 10)
        janeface += 0.2
    else
        progress = 6
}
if (progress == 6 && (!instance_exists(obj_text_box)))
{
    instance_create(x, y, obj_th_janegrip)
    progress = 7
    global.thkey1call = 1
    script_execute(scr_random_encounter)
}

