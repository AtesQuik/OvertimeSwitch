if ((!instance_exists(obj_m_tavishstop2)) && instance_exists(obj_protagonist))
{
    x = obj_protagonist.x
    if (waiting == 0)
    {
        waiting = 1
        alarm[0] = 30
    }
}
if instance_exists(obj_protagonist)
{
    if (obj_protagonist.moving == 1)
        image_speed = 0.2
    else
        image_speed = 0
}

