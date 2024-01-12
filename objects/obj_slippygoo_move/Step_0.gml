if instance_exists(obj_protagonist)
{
    x = obj_protagonist.x
    y = obj_protagonist.y
    if place_meeting(obj_protagonist.x, obj_protagonist.y, obj_slippygoo)
    {
        with (obj_protagonist)
        {
            if (prodirection == 0 && (!(place_meeting(x, (y + other.spd), obj_solid))))
                other.goodirection = 0
            if (prodirection == 1 && (!(place_meeting((x + other.spd), y, obj_solid))))
                other.goodirection = 1
            if (prodirection == 2 && (!(place_meeting(x, (y - other.spd), obj_solid))))
                other.goodirection = 2
            if (prodirection == 3 && (!(place_meeting((x - other.spd), y, obj_solid))))
                other.goodirection = 3
            if (other.goodirection == 0)
            {
                if (!(place_meeting(x, (y + other.spd), obj_solid)))
                {
                    other.ismoving = 1
                    y += other.spd
                }
                else
                    other.ismoving = 0
            }
            if (other.goodirection == 1)
            {
                if (!(place_meeting((x + other.spd), y, obj_solid)))
                {
                    other.ismoving = 1
                    x += other.spd
                }
                else
                    other.ismoving = 0
            }
            if (other.goodirection == 2)
            {
                if (!(place_meeting(x, (y - other.spd), obj_solid)))
                {
                    other.ismoving = 1
                    y -= other.spd
                }
                else
                    other.ismoving = 0
            }
            if (other.goodirection == 3)
            {
                if (!(place_meeting((x - other.spd), y, obj_solid)))
                {
                    other.ismoving = 1
                    x -= other.spd
                }
                else
                    other.ismoving = 0
            }
        }
    }
    else
        instance_destroy()
}
else
    instance_destroy()

