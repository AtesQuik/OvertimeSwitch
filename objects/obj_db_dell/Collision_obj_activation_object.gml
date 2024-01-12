global.talkedtodell = 1
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
            MAXSTR = 11
            textvoice = 85
            FACESTR[0] = 634
            STR[0] = "* hey there, pardner."
            FACESTR[1] = 634
            STR[1] = "* listen...jane is currently#  guarding the entrance#  to the mines."
            FACESTR[2] = 635
            STR[2] = "* he said if anyone came by,#  hed stop them himself#  instead of using traps."
            FACESTR[3] = 635
            STR[3] = "* i even saw him take his#  rocket launcher with him."
            FACESTR[4] = 634
            STR[4] = "* id like to ask you a favor,#  though."
            FACESTR[5] = 634
            STR[5] = "* dont kill him.#* hes my best buddy."
            FACESTR[6] = 634
            STR[6] = "* i know this sounds insane,#  since hell try to kill you."
            FACESTR[7] = 634
            STR[7] = "* but he has some#  extraordinary skills. "
            FACESTR[8] = 634
            STR[8] = "* so if thats what you#  are looking for,#  you can hire him."
            FACESTR[9] = 635
            STR[9] = "* if not...#* ...your choice."
            FACESTR[10] = 634
            STR[10] = "* well, that was all.#* thanks for listening."
            FACESTR[11] = 637
            STR[11] = "* oh, and...good luck."
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 0
            textvoice = 85
            FACESTR[0] = 637
            STR[0] = "* better buy some items#  first, dont you think?"
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
            MAXSTR = 7
            textvoice = 85
            FACESTR[0] = 634
            STR[0] = "* hey there."
            FACESTR[1] = 635
            STR[1] = "* still on the warpath,#  arent you?"
            FACESTR[2] = 634
            STR[2] = "* you sure scared everyone#  away from here."
            FACESTR[3] = 634
            STR[3] = "* well, except me."
            FACESTR[4] = 635
            STR[4] = "* i just needed to tell you#  one thing."
            FACESTR[5] = 634
            STR[5] = "* i am going to drink a beer#  tonight with jane.#* as i do every evening."
            FACESTR[6] = 634
            STR[6] = "* if for some reason he#  doesnt show up..."
            FACESTR[7] = 640
            STR[7] = "* ...ill make sure you never#  show up to anything ever#  again, either."
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 0
            textvoice = 85
            FACESTR[0] = 634
            STR[0] = "* i aint got nothing#  else to say."
        }
    }
}
