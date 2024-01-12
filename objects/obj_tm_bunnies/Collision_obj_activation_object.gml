with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = other.stringamount
        STR[0] = other.string1
        STR[1] = other.string2
        STR[2] = other.string3
        STR[3] = other.string4
        STR[4] = other.string5
        STR[5] = other.string6
        STR[6] = other.string7
        STR[7] = other.string8
        STR[8] = other.string9
        STR[9] = other.string10
    }
}
