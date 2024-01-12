if (progress == 1 && stop == 0)
{
    speed = 0
    if (extraangle < 40)
    {
        extraangle += 20
        image_angle += 20
    }
    else
        progress = 2
}
if (progress == 2 && stop == 0)
{
    if (extraangle > -40)
    {
        extraangle -= 20
        image_angle -= 20
    }
    else
        progress = 1
}

