if (leftorright == 0)
{
    if (x > 330)
        speed = 0
}
if (leftorright == 1)
{
    if (x < -20)
        speed = 0
}
if (fadeout == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.05
    else
        instance_destroy()
}

