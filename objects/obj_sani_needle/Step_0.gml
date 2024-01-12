if (dir == 1)
{
    if (x < 340)
        x += spd
    else
        instance_destroy()
}
else if (x > -20)
    x -= spd
else
    instance_destroy()
image_index = healornoheal

