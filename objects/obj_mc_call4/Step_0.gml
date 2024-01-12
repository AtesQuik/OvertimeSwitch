if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 3
        textvoice = 104
        FACESTR[0] = 667
        STR[0] = "* Mein Gott, I am so#  very sorry!"
        FACESTR[1] = 667
        STR[1] = "* That wasn't the right#  way at all!"
        FACESTR[2] = 664
        STR[2] = "* You actually need to#  go..."
        FACESTR[3] = 672
        STR[3] = "* Oh dear, could you hold#  on for a moment while #  I figure this out?"
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
    global.mccall4 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

