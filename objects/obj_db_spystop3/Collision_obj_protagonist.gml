with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = obj_protagonist.prodirection
    instance_destroy()
}
progress = 1
with (instance_create(x, y, obj_text_box))
{
    MAXSTR = 0
    textvoice = 99
    FACESTR[0] = 653
    STR[0] = "* Are ya sure that ye#  dun' wanna turn back?"
}
