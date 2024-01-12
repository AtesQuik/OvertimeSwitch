with (obj_activation_object)
    instance_destroy()
if (global.genocide == 0)
{
    script_execute(scr_face_protagonist)
    if (progress == 0)
    {
        progress = 1
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 6
            textvoice = 85
            FACESTR[0] = 634
            STR[0] = "* good work, pardner.#  you really cheered#  him up."
            FACESTR[1] = 636
            STR[1] = "* trying to stop you#  was a blast for him."
            FACESTR[2] = 635
            STR[2] = "* dont worry about#  him, he was smiling#  as he left."
            FACESTR[3] = 634
            STR[3] = "* you heard him, hes#  going to dustbowl."
            FACESTR[4] = 634
            STR[4] = "* aint that where you#  are headed, too?"
            FACESTR[5] = 634
            STR[5] = "* youll meet him again#  then, i guess."
            FACESTR[6] = 636
            STR[6] = "* ill be there, too."
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 0
            textvoice = 85
            FACESTR[0] = 636
            STR[0] = "* what are you#  waiting for?"
        }
    }
}
else if (global.genocide == 1)
{
    if (progress == 0)
    {
        progress = 1
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 2
            textvoice = 85
            FACESTR[0] = 634
            STR[0] = "* you know you will#  meet him later."
            FACESTR[1] = 634
            STR[1] = "* dont you dare harm him#  when that happens."
            FACESTR[2] = 640
            STR[2] = "* because i will know."
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 0
            textvoice = 85
            FACESTR[0] = 640
            STR[0] = "* im warning you."
        }
    }
}
