with (obj_activation_object)
    instance_destroy()
if (global.hospitalprogress < 5)
    script_execute(scr_random_encounter)
if (global.hospitalprogress > 4)
{
    with (obj_activation_object)
        instance_destroy()
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 0
        STR[0] = "* Just a poor old dummy who#  never did anyone any harm."
    }
}
