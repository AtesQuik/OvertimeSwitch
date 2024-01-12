with (obj_activation_object)
    instance_destroy()
progress = 1
if (global.genocide == 1)
{
    if (!instance_exists(obj_text_box))
    {
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = 96
            MAXSTR = 6
            FACESTR[0] = 651
            STR[0] = "* I've been watchin'#  your..."
            FACESTR[1] = 652
            STR[1] = "* ...progress since#  you've arrived 'ere."
            FACESTR[2] = 651
            STR[2] = "* You won't get a#  warning shot."
            FACESTR[3] = 652
            STR[3] = "* No..."
            FACESTR[4] = 651
            STR[4] = "* You already know what#  kinda deep waters you#  are wading in."
            FACESTR[5] = 652
            STR[5] = "* Well then..."
            FACESTR[6] = 651
            STR[6] = "* Let's see how much#  blood's in ya!"
        }
    }
}
else if (!instance_exists(obj_text_box))
{
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = 96
        MAXSTR = 0
        FACESTR[0] = 651
        STR[0] = "* Let's have a go#  at it, ya mug!"
    }
}
