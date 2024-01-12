alarm[0] = 420
alarm[3] = 5
if (actnow == 1)
{
    actnow = 2
    if (boworder == 0)
    {
        with (obj_pl_bow)
        {
            if (bownumber == 0)
                alarm[0] = 1
            if (bownumber == 1)
                alarm[0] = 60
            if (bownumber == 2)
            {
                alarm[0] = 120
                actnow = 1
            }
            if (bownumber == 3)
                alarm[0] = 180
        }
    }
    if (boworder == 1)
    {
        with (obj_pl_bow)
        {
            if (bownumber == 1)
                alarm[0] = 1
            if (bownumber == 2)
                alarm[0] = 60
            if (bownumber == 3)
            {
                alarm[0] = 120
                actnow = 1
            }
            if (bownumber == 0)
                alarm[0] = 180
        }
    }
    if (boworder == 2)
    {
        with (obj_pl_bow)
        {
            if (bownumber == 2)
                alarm[0] = 1
            if (bownumber == 3)
                alarm[0] = 60
            if (bownumber == 0)
            {
                alarm[0] = 120
                actnow = 1
            }
            if (bownumber == 1)
                alarm[0] = 180
        }
    }
    if (boworder == 3)
    {
        with (obj_pl_bow)
        {
            if (bownumber == 3)
                alarm[0] = 1
            if (bownumber == 0)
                alarm[0] = 60
            if (bownumber == 1)
            {
                alarm[0] = 120
                actnow = 1
            }
            if (bownumber == 2)
                alarm[0] = 180
        }
    }
}
else
{
    if (boworder == 0)
    {
        with (obj_pl_bow)
        {
            if (bownumber == 0)
                alarm[0] = 1
            if (bownumber == 1)
                alarm[0] = 60
            if (bownumber == 2)
                alarm[0] = 120
            if (bownumber == 3)
                alarm[0] = 180
        }
    }
    if (boworder == 1)
    {
        with (obj_pl_bow)
        {
            if (bownumber == 1)
                alarm[0] = 1
            if (bownumber == 2)
                alarm[0] = 60
            if (bownumber == 3)
                alarm[0] = 120
            if (bownumber == 0)
                alarm[0] = 180
        }
    }
    if (boworder == 2)
    {
        with (obj_pl_bow)
        {
            if (bownumber == 2)
                alarm[0] = 1
            if (bownumber == 3)
                alarm[0] = 60
            if (bownumber == 0)
                alarm[0] = 120
            if (bownumber == 1)
                alarm[0] = 180
        }
    }
    if (boworder == 3)
    {
        with (obj_pl_bow)
        {
            if (bownumber == 3)
                alarm[0] = 1
            if (bownumber == 0)
                alarm[0] = 60
            if (bownumber == 1)
                alarm[0] = 120
            if (bownumber == 2)
                alarm[0] = 180
        }
    }
}

