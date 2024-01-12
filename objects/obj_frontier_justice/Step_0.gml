var dist;
if (fadein == 0 && progress == 0)
{
    dist = point_distance(x, y, gotox, gotoy)
    if (dist > spd)
        move_towards_point(gotox, gotoy, spd)
    else
        speed = 0
}
if (progress == 0 && fadein == 1)
{
    if (image_alpha < 1)
        image_alpha += 0.2
}
if (progress == 1 && fadein == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.1
    else
        instance_destroy()
}

