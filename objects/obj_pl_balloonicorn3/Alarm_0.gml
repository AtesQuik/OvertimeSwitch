alarm[0] = 30
alarm[2] = 1
if (actnow == 1)
{
    with (obj_pl_rpg)
    {
        if (rpgnumber == obj_pl_balloonicorn3.rpgchosen)
        {
            if (leftorright == 0)
            {
                if (y < 360 && y > 120)
                {
                    obj_pl_balloonicorn3.actnow = 2
                    with (instance_create(x, y, obj_pl_act))
                    {
                        xmovespd = 8
                        image_xscale = 0.1
                        image_yscale = 0.1
                    }
                }
                else
                {
                    obj_pl_balloonicorn3.alarm[2] = 1
                    obj_pl_balloonicorn3.alarm[0] = 2
                }
            }
            else if (y > 120 && y < 360)
            {
                obj_pl_balloonicorn3.actnow = 2
                with (instance_create(x, y, obj_pl_act))
                {
                    xmovespd = -8
                    image_xscale = 0.1
                    image_yscale = 0.1
                }
            }
            else
            {
                obj_pl_balloonicorn3.alarm[2] = 1
                obj_pl_balloonicorn3.alarm[0] = 2
            }
        }
    }
}
else
{
    with (obj_pl_rpg)
    {
        if (rpgnumber == obj_pl_balloonicorn3.rpgchosen)
        {
            if (leftorright == 0)
            {
                if (y < 360)
                {
                    with (instance_create(x, y, obj_pl_rpgrocket))
                    {
                        movedirection = 0
                        saved = obj_pl_balloonicorn3.saved
                        image_xscale = 2
                    }
                }
                else
                {
                    obj_pl_balloonicorn3.alarm[2] = 1
                    obj_pl_balloonicorn3.alarm[0] = 2
                }
            }
            else if (y > 120)
            {
                with (instance_create(x, y, obj_pl_rpgrocket))
                {
                    movedirection = 1
                    saved = obj_pl_balloonicorn3.saved
                    image_xscale = -2
                }
            }
            else
            {
                obj_pl_balloonicorn3.alarm[2] = 1
                obj_pl_balloonicorn3.alarm[0] = 2
            }
        }
    }
}

