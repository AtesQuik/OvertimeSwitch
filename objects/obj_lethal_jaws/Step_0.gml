if (progress == 0)
{
    if (image_alpha < 1)
        image_alpha += 0.05
    else
        progress = 1
}
if (progress == 1)
{
    if (image_index == 0)
    {
        if (moveamount < 6)
        {
            moveamount += 1
            y -= 2
        }
        else
            progress = 2
    }
    if (image_index == 1)
    {
        if (moveamount < 6)
        {
            moveamount += 1
            y += 2
        }
        else
            progress = 2
    }
}
if (progress == 2)
{
    if (image_index == 0)
    {
        if (moveamount < 12)
        {
            moveamount += 1
            y += 4
        }
        else
            progress = 3
    }
    if (image_index == 1)
    {
        if (moveamount < 12)
        {
            moveamount += 1
            y -= 4
        }
        else
            progress = 3
    }
}
if (progress == 3)
{
    if (image_alpha > 0)
        image_alpha -= 0.1
    else
        instance_destroy()
}

