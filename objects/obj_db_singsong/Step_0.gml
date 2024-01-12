x += 0.2
if (timingout == 0)
{
    if (POS < string_length(textstring))
        POS += 0.25
    if (POS >= string_length(textstring))
    {
        timingout = 1
        alarm[0] = 30
    }
}
if (timingout == 2)
{
    if (image_alpha > 0)
        image_alpha -= 0.05
    else
        instance_destroy()
}

