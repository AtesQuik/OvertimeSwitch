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
    STR[0] = "* No?#* Well, it's your choice,#  isn't it?"
}
