if (progress == 0)
{
    if place_meeting(x, y, obj_pl_evade_soul)
    {
        if (activated == 0)
            activated = 1
        if (activated == 1)
        {
            if keyboard_check_pressed(global.actionkey)
            {
                progress = 1
                instance_create(110, 380, obj_pl_helpbox)
            }
        }
    }
    else
        activated = 0
}
if (progress == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.02
    else
        instance_destroy()
}
if (shotout == 1)
{
    if (speed > 0)
        speed -= 0.1
}
if (image_xscale < 1)
    image_xscale += 0.05
if (image_yscale < 1)
    image_yscale += 0.05
if (xmovespd > 0 && x < 320)
    x += xmovespd
if (xmovespd < 0 && x > 320)
    x += xmovespd
if (spin == 1)
{
    if (image_angle < 359)
        image_angle += 1
    else
        image_angle = 0
}
if (spin == -1)
{
    if (image_angle > 1)
        image_angle -= 1
    else
        image_angle = 360
}

