if (image_angle < 350)
    image_angle += 10
else
    image_angle = 0
if (x > 330 || x < -10 || y > 250 || y < -10)
    instance_destroy()
if (soulbit == 0)
{
    x -= 4
    y -= 4
}
if (soulbit == 1)
{
    x += 4
    y -= 4
}
if (soulbit == 2)
{
    x += 4
    y += 4
}
if (soulbit == 3)
{
    x -= 4
    y += 4
}

