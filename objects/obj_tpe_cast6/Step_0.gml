counter += 1
if (counter == 30)
{
    with (instance_create(-100, 160, obj_tpe_photo))
    {
        image_index = 5
        gotox = 130
        gotoy = 80
        spindirection = 1
    }
}
if (counter == 90)
    progress = 1
if (progress == 1)
{
    if (mishablack > 0)
        mishablack -= 0.05
}
if (counter == 210)
{
    with (instance_create(440, 60, obj_tpe_photo))
    {
        depth = -5
        image_index = 6
        gotox = 190
        gotoy = 100
    }
}
if (counter == 240)
    progress = 2
if (progress == 2)
{
    if (saniblack > 0)
        saniblack -= 0.05
}
if (counter == 600)
    progress = 5
if (progress == 5)
{
    if instance_exists(obj_tpe_photo)
    {
        with (obj_tpe_photo)
            fadeout = 1
    }
    if (mishablack < 1)
        mishablack += 0.05
    if (saniblack < 1)
        saniblack += 0.05
}
if (counter == 645)
    room_goto(rm_c_7)

