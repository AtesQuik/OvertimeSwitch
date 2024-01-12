if (movedirection == 0)
{
    if (x < 760)
        x += 0.5
    else if (deletenow == 0)
        x = -480
    else
        instance_destroy()
}
if (movedirection == 1)
{
    if (x > -120)
        x -= 0.5
    else if (deletenow == 0)
        x = 1080
    else
        instance_destroy()
}

