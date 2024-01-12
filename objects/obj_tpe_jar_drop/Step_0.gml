if (progress == 0)
{
    if (distance_to_point(gotox, gotoy) <= 0)
    {
        if (!instance_exists(obj_tpe_jar))
        {
            with (instance_create(gotox, gotoy, obj_tpe_jar))
                damagedone = other.damagedone
        }
        progress = 1
    }
}

