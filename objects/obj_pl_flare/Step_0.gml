if (index1 < 60)
    index1 += 1
else
    index1 = 0
if (index2 < 60)
    index2 += 1
else
    index2 = 0
if (index3 < 60)
    index3 += 1
else
    index3 = 0
if (flaredir == 0)
{
    if (x < 740)
        x += spd
    else
        instance_destroy()
}
else if (x > -100)
    x -= spd
else
    instance_destroy()

