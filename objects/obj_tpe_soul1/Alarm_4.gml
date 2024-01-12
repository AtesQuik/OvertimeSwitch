if (!instance_exists(obj_speech_bubble_noevade))
{
    with (obj_tpe_ballooney1)
        image_xscale = 1
    progress = 13
    with (instance_create(-20, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 99
        MAXSTR = 0
        STR[0] = "Come on! Ye outran#me, you've go' more#than enough stamina#to keep goin'!"
    }
}
