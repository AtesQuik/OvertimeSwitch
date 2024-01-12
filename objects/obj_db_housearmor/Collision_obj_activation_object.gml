var __b__;
__b__ = action_if_variable(global.janekilled, 1, 0)
if __b__
{
    with (obj_activation_object)
        instance_destroy()
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* An empty suit of armor.#* It seems to be holding two#  beer bottles."
    }
}
else
{
    with (obj_activation_object)
        instance_destroy()
    tavishtalk = 1
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = obj_protagonist.prodirection
        instance_destroy()
    }
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 0
        textvoice = 86
        FACESTR[0] = 645
        STR[0] = "SAY, TAVISH...#WHY DID YOU WEAR#THAT HEAVY ARMOR?"
    }
}
