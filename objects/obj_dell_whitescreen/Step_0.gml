if (progress == 0)
{
    if (whitescreen < 1)
        whitescreen += 0.05
    else
    {
        progress = 1
        alarm[0] = 30
    }
}
if (progress == 2)
{
    if (whitescreen > 0)
        whitescreen -= 0.01
    else
        instance_destroy()
}

