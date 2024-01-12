with (obj_activation_object)
    instance_destroy()
janetalk = 1
with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = obj_protagonist.prodirection
    instance_destroy()
}
with (instance_create(x, y, obj_text_box))
{
    MAXSTR = 2
    textvoice = 99
    FACESTR[0] = 653
    STR[0] = "* Aye, lass!#* Jane told me you're his#  employer."
    FACESTR[1] = 653
    STR[1] = "* If ya had said that#  earlier, I would have#  never tried to kill ye!"
    FACESTR[2] = 653
    STR[2] = "* I'd never do anything#  that would make Jane#  lose his job!"
}
