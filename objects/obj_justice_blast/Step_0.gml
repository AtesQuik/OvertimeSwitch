if (progress == 0)
    image_yscale /= 0.91
if (progress == 1)
    image_yscale *= 0.9
if (progress == 2)
    image_yscale /= 0.91
if (progress == 3)
{
    if (image_yscale > 0)
        image_yscale *= 0.95
}
if (fadeout == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.2
    else
        instance_destroy()
}

