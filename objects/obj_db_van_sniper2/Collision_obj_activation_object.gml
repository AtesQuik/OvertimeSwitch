with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        textvoice = 96
        MAXSTR = 0
        FACESTR[0] = 651
        if (global.dbsniper == 0 && global.minesover == 0)
            STR[0] = "* Wanna head back to#  Thunder Mountain?#  Yes         No"
        if (global.dbsniper == 0 && global.minesover == 1)
            STR[0] = "* Where do you wanna go?#  Hospital    Thunder#  entrance    Mountain"
        if (global.dbsniper == 1)
            STR[0] = "* Where do you wanna go?#  Hospital    Mann Co.#  entrance    HQ"
        choices = 1
    }
}
