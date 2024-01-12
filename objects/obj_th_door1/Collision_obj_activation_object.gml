with (obj_activation_object)
    instance_destroy()
if (global.thkey1 == 1)
{
    global.thdoor1 = 1
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (You unlock the door using#  the green key.)"
    }
    unlocked = 1
}
else
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (You'll need a green key#  to open this door.)"
    }
}
