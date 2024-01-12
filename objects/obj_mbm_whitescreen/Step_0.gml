if (fadeout == 0)
{
    if (whitespeed == 0)
    {
        if (whitescreen < 1)
            whitescreen += 0.2
        else
            instance_destroy()
    }
    if (whitespeed == 1)
    {
        if (whitescreen < 1)
            whitescreen += 0.02
    }
}
else if (blackscreen < 1)
    blackscreen += 0.05
else
    instance_destroy()

