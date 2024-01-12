with (obj_activation_object)
    instance_destroy()
if instance_exists(obj_protagonist)
{
    if (obj_protagonist.prodirection == 0)
        image_index = 2
    if (obj_protagonist.prodirection == 1)
        image_index = 3
    if (obj_protagonist.prodirection == 2)
        image_index = 0
    if (obj_protagonist.prodirection == 3)
        image_index = 1
}
progress = 1
with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = obj_protagonist.prodirection
    instance_destroy()
}
with (instance_create(x, y, obj_text_box))
{
    MAXSTR = 2
    textvoice = 81
    FACESTR[0] = 688
    STR[0] = "* Is last chance to turn#  back."
    FACESTR[1] = 688
    STR[1] = "* Is okay."
    FACESTR[2] = 693
    STR[2] = "* I would leave too."
}
