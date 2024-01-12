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
        if (global.dbsniper == 0)
            STR[0] = "* Wanna head back to#  Teufort?#  Yes         No"
        if (global.dbsniper == 1)
            STR[0] = "* Where do you wanna go?#              Mann Co.#  Teufort     HQ"
        choices = 1
    }
}
