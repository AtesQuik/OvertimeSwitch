with (obj_activation_object)
    instance_destroy()
global.thkey2 = 1
with (instance_create(x, y, obj_text_box))
{
    MAXSTR = 1
    STR[0] = "* (It's a small yellow key.)#* (It smells funny.)"
    STR[1] = "* (You put it in your#  pocket.)"
}
with (obj_roomchange)
{
    roomname = 202
    xpos = 160
    ypos = 200
    pdirection = 2
}
instance_destroy()
