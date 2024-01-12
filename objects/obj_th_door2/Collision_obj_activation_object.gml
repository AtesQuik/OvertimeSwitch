with (obj_activation_object)
    instance_destroy()
if (global.thkey2 == 1 && global.thkey3 == 1)
{
    global.thdoor2 = 1
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (You unlock the door#  using the two keys.)"
    }
    unlocked = 1
}
else
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (This door requires both#  a yellow and a blue key.)"
    }
}
