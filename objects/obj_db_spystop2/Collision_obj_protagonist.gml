with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = obj_protagonist.prodirection
    instance_destroy()
}
progress = 1
with (instance_create(x, y, obj_text_box))
{
    fontname = 4
    MAXSTR = 0
    textvoice = 86
    FACESTR[0] = 641
    STR[0] = "DON'T YOU KNOW#THAT THERE'S#DEATH EVERYWHERE?"
}
