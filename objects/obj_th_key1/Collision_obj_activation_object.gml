with (obj_activation_object)
    instance_destroy()
if (global.thkey1 == 0)
{
    global.thkey1 = 1
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 6
        STR[0] = "* (The sink is filled with#  a suspicious red liquid.)"
        STR[1] = "* (...)"
        STR[2] = "* (There's something inside.)"
        STR[3] = "* (You reach into the#  liquid.)"
        STR[4] = "* (It doesn't feel like#  you're touching anything.)#* (Yet it hurts.)"
        STR[5] = "* (You grab the thing at#  the bottom.)#* (It's a small green key.)"
        STR[6] = "* (You put it#  in your pocket.)"
    }
}
else
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (You can see your#  reflection shimmer#  in the liquid.)"
    }
}
