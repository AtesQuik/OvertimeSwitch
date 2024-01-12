if instance_exists(obj_evade_shield)
{
    if (image_alpha < 0.5)
        image_alpha += 0.05
}
else if (image_alpha > 0)
    image_alpha -= 0.05
else
    instance_destroy()

