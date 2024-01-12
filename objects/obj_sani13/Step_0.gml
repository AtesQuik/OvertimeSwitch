var __b__;
if (leaving == 1 && (!instance_exists(obj_text_box)))
{
    if (!instance_exists(obj_pro_stopped))
    {
        instance_create(obj_protagonist.x, obj_protagonist.y, obj_pro_stopped)
        with (obj_pro_stopped)
            image_index = obj_protagonist.prodirection
        with (obj_protagonist)
            instance_destroy()
    }
    x += 4
    sprite_index = spr_sani_right
    image_speed = 0.25
}
if (global.textboxchoice == 1)
{
    global.textboxchoice = 0
    with (obj_text_box)
    {
        MAXSTR = 0
        textvoice = 82
        FACESTR[0] = 620
        STR[0] = "* Of course.#* Talk to me when you#  need anything!"
    }
}
if (global.textboxchoice == 2)
{
    global.textboxchoice = 0
    with (obj_text_box)
    {
        MAXSTR = 1
        textvoice = 82
        FACESTR[0] = 623
        STR[0] = "* ..."
        FACESTR[1] = 623
        STR[1] = "* Wait here, please.#* I will be right back."
    }
    leaving = 1
}
__b__ = action_if_variable(leaving, 0, 0)
if __b__
    image_index = npcdirection

