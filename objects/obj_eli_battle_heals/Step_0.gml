if (progress == 0)
{
    if (image_xscale < 1)
        image_xscale += 0.05
    if (image_yscale < 1)
        image_yscale += 0.05
    if place_meeting(x, y, obj_misha_battle)
        progress = 1
}
if (progress == 1)
{
    if (speed > 0)
        speed -= 0.05
    if (image_alpha > 0)
        image_alpha -= 0.05
    else
        instance_destroy()
}

