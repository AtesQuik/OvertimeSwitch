with (obj_activation_object)
    instance_destroy()
if (global.mbmkey1 == 1 && global.mbmkey2 == 1)
{
    global.mbmunlocked = 1
    global.lineprogress = 3
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (You unlock the door using#  the two keys.)"
    }
    unlocked = 1
}
else
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (It's a giant metal door.)#* (Seems like you need two#  keys to open it.)"
    }
}
