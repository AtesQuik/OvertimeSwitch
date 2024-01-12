if (pos < 0)
    pos += 9
else if (waiting == 0)
{
    waiting = 1
    alarm[0] = 120
}
if (waiting == 2)
{
    if (image_alpha > 0)
        image_alpha -= 0.05
}

