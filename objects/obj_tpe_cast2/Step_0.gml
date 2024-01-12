counter += 1
if (counter == 30)
{
    with (instance_create(-100, 110, obj_tpe_photo))
    {
        image_index = 0
        gotox = 110
        gotoy = 80
    }
}
if (counter == 90)
    progress = 1
if (progress == 1)
{
    if (janeblack > 0)
        janeblack -= 0.05
}
if (counter == 210)
    progress = 2
if (progress == 2)
{
    if (dellblack > 0)
        dellblack -= 0.05
}
if (counter == 300)
    progress = 3
if (progress == 3)
{
    if (janeblack < 1)
        janeblack += 0.05
    if (dellblack < 1)
        dellblack += 0.05
}
if (counter == 350)
{
    with (instance_create(430, 80, obj_tpe_photo))
    {
        depth = -5
        spindirection = 1
        image_index = 1
        gotox = 200
        gotoy = 110
    }
}
if (counter == 410)
    progress = 4
if (progress == 4)
{
    if (sniperblack > 0)
        sniperblack -= 0.05
}
if (counter == 530)
    progress = 5
if (progress == 5)
{
    if instance_exists(obj_tpe_photo)
    {
        with (obj_tpe_photo)
            fadeout = 1
    }
    if (sniperblack < 1)
        sniperblack += 0.05
}
if (counter == 580)
    room_goto(rm_c_3)

