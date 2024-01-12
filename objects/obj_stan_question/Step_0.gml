if (movedirection == 0)
{
    if (image_angle < (360 - angle))
        image_angle += angle
    else
        image_angle = 0
}
if (movedirection == 1)
{
    if (image_angle > 0)
        image_angle -= angle
    else
        image_angle = (360 - angle)
}

