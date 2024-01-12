global.minedell = 1
with (obj_activation_object)
    instance_destroy()
script_execute(scr_face_protagonist)
if (progress == 0)
{
    progress = 1
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 12
        textvoice = 85
        FACESTR[0] = 634
        STR[0] = "* howdy, pardner."
        FACESTR[1] = 634
        STR[1] = "* jane just called me."
        FACESTR[2] = 634
        STR[2] = "* you hired him, he said."
        FACESTR[3] = 634
        STR[3] = "* he seemed pretty#stoked, to be honest."
        FACESTR[4] = 635
        STR[4] = "* no one has ever treated#  him with that much#  respect before."
        FACESTR[5] = 634
        STR[5] = "* oh, and..."
        FACESTR[6] = 634
        STR[6] = "* thanks for not#  assassinating him."
        FACESTR[7] = 635
        STR[7] = "* so, youre heading#  for RED now, then?"
        FACESTR[8] = 636
        STR[8] = "* well, i guess youre#  RED-y."
        FACESTR[9] = 635
        STR[9] = "* i think thats where#  the mann brothers#  are as well."
        FACESTR[10] = 634
        STR[10] = "* just watch out.#* they have a pretty#  good bodyguard."
        FACESTR[11] = 634
        STR[11] = "* no one fought that#  guy and lived to#  tell the tale."
        FACESTR[12] = 637
        STR[12] = "* well, so long pardner.#* ill see you around."
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
        STR[0] = "* what? you think im#  gonna repeat the last#  thing i just said?"
    }
}
