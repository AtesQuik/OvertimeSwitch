if (progress == 2)
{
    progress = 3
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 3
        textvoice = 104
        FACESTR[0] = 664
        STR[0] = "* There she is!"
        FACESTR[1] = 670
        STR[1] = "* Wunderbar!"
        FACESTR[2] = 674
        STR[2] = "* Remember what we#  talked about!"
        FACESTR[3] = 674
        STR[3] = "* Just do your thing!"
    }
}
if (progress == 3 && instance_exists(obj_text_box))
{
    if (obj_text_box.N == 2)
    {
        mishaindex = 1
        eliindex = 3
    }
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    progress = 4
    global.mbmmishaandeli = 1
    script_execute(scr_random_encounter)
}

