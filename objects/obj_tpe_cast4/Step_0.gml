counter += 1
if (counter == 60)
{
    with (instance_create(-100, 40, obj_tpe_photo))
    {
        image_index = 2
        gotox = 110
        gotoy = 80
        spindirection = 1
    }
}
if (counter == 120)
    progress = 1
if (progress == 1)
{
    if (eliblack > 0)
        eliblack -= 0.05
}
if (counter == 380)
{
    with (instance_create(430, 120, obj_tpe_photo))
    {
        depth = -5
        image_index = 3
        gotox = 220
        gotoy = 100
    }
}
if (counter == 440)
    progress = 2
if (progress == 2)
{
    if (tavishblack > 0)
        tavishblack -= 0.05
}
if (counter == 530)
    progress = 3
if (progress == 3)
{
    if (y < 840)
        y += 1
    else
        progress = 4
}
if (counter == 1350)
    room_goto(rm_c_5)

