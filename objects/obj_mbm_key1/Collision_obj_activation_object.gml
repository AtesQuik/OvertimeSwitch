with (obj_activation_object)
    instance_destroy()
global.mbmkey1 = 1
if (global.mbmkey2 == 1)
    global.lineprogress = 2
with (instance_create(x, y, obj_text_box))
{
    MAXSTR = 1
    STR[0] = "* (It's a small key#  for a lock.)"
    STR[1] = "* (You put it in your#  pocket.)"
}
instance_destroy()
