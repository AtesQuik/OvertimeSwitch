progress = 0
if (global.truehospitalprogress > 0)
{
    instance_destroy()
    with (instance_create(x, y, obj_roomchange))
    {
        roomname = 196
        xpos = 160
        ypos = 200
        pdirection = 2
    }
}

