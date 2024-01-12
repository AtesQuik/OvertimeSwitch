if (global.mcencounter2 == 1 || global.mcover == 1)
    instance_destroy()
else
{
    alarm[0] = 30
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 2
        instance_destroy()
    }
}
image_speed = 0
progress = 0

