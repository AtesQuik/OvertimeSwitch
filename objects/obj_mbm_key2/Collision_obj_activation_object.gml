with (obj_activation_object)
    instance_destroy()
if (global.mbmkey2 == 0)
{
    global.mbmkey2 = 1
    if (global.mbmkey1 == 1)
        global.lineprogress = 1
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 1
        STR[0] = "* (Inside the drawer is#  a key.)"
        STR[1] = "* (You put it in your#  pocket.)"
    }
}
else
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (A key-lacking drawer.)"
    }
}
