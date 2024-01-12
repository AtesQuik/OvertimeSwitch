if (progress == 0)
{
    if (image_xscale < limit)
        image_xscale += 1
    if (image_yscale < limit)
        image_yscale += 1
}
if (progress == 1)
{
    if (image_xscale > 4)
        image_xscale -= 0.5
    if (image_yscale > 4)
        image_yscale -= 0.5
    if (image_alpha > 0)
        image_alpha -= 0.05
    else
        instance_destroy()
}

