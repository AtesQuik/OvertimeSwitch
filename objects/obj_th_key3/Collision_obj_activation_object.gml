with (obj_activation_object)
    instance_destroy()
global.thkey3 = 1
with (instance_create(x, y, obj_text_box))
{
    MAXSTR = 1
    STR[0] = "* (It's a very rusty blue#  key.)"
    STR[1] = "* (You put it in your#  pocket.)"
}
with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = obj_protagonist.prodirection
    instance_destroy()
}
progress = 1
