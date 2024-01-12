if (fadein == 0)
{
    image_angle = point_direction(x, y, gotox, gotoy)
    move_towards_point(gotox, gotoy, spd)
}
else
    image_angle = point_direction(x, y, 160, 160)
