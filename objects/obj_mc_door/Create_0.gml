if (global.mcswitch1 == 1 && global.mcswitch2 == 1 && global.mcswitch3 == 1)
{
    instance_destroy()
    with (instance_create(150, 70, obj_roomchange))
    {
        roomname = 142
        xpos = 160
        ypos = 440
        pdirection = 2
    }
    with (instance_create(170, 70, obj_roomchange))
    {
        roomname = 142
        xpos = 160
        ypos = 440
        pdirection = 2
    }
}

