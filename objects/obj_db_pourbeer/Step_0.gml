if (progress == 1 && image_index == 3)
{
    progress = 2
    sprite_index = spr_pbeer_beer
    image_speed = 0.1
    alarm[1] = 150
}
if (progress == 3)
{
    sprite_index = spr_pbeer_left
    image_speed = 0.1
    if (x < 90)
        x += 0.5
    else
        progress = 4
}
if (progress == 4)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = 3
    instance_destroy()
}

