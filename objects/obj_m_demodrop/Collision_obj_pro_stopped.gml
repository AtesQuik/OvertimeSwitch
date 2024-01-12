global.previousroom = room
with (obj_pro_stopped)
{
    global.playerdirection = image_index
    global.playerxpos = x
    global.playerypos = y
    instance_create(x, y, obj_fake_soul_battlestart)
    instance_destroy()
}
