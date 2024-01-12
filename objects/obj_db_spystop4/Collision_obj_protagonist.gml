with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = obj_protagonist.prodirection
    instance_destroy()
}
progress = 1
with (instance_create(x, y, obj_text_box))
{
    fontname = 5
    MAXSTR = 0
    textvoice = 85
    FACESTR[0] = 636
    STR[0] = "* i mean, it would#  be better for you."
}
