normalalpha = 1
brightalpha = 0
progress = 0
if (instance_number(obj_green_goo) > 1)
    instance_destroy()
if instance_exists(obj_green_goo)
{
    with (obj_green_goo)
        instance_destroy()
}

