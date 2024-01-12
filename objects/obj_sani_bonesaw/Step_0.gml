if (attacking == 0)
{
    image_angle = point_direction(x, y, global.soulxposition, global.soulyposition)
    if (transparent < 1)
        transparent += 0.05
}
if (attacking == 2)
{
    if (transparent > 0)
        transparent -= 0.05
    else
        instance_destroy()
}
image_yscale = sawdirection

