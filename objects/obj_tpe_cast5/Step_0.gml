counter += 1
if (counter == 30)
{
    with (instance_create(420, 50, obj_tpe_photo))
    {
        image_index = 4
        gotox = 160
        gotoy = 80
    }
}
if (counter == 80)
    progress = 1
if (progress == 1)
{
    if (scoutblack > 0)
        scoutblack -= 0.05
}
if (counter == 145)
    progress = 2
if (progress == 2)
{
    if (spyblack > 0)
        spyblack -= 0.05
}
if (counter == 235)
    progress = 3
if (progress == 3)
{
    if (y < 2040)
        y += 1
    else
        progress = 4
}
if (counter == 2137)
    room_goto(rm_c_6)

