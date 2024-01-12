if (y < 240)
{
    y += 3
    x += extrax
}
else
    instance_destroy()
if (rightorleft == 0)
{
    if (image_angle < 360)
        image_angle += 10
    else
        image_angle = 0
}
if (rightorleft == 1)
{
    if (image_angle > 0)
        image_angle -= 10
    else
        image_angle = 360
}

