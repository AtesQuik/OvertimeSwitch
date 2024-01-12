progress = 0
if (global.truehospitalprogress > 7)
{
    instance_destroy()
    with (instance_create(x, y, obj_roomchange))
    {
        roomname = 210
        xpos = 160
        ypos = 200
        pdirection = 2
    }
}

