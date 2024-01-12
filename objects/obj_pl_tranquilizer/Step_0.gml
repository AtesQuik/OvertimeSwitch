var pd1, dd1, pd2, dd2, pd3, dd3;
if (progress == 1)
{
    pd1 = point_direction(x, y, crosshair1x, crosshair1y)
    dd1 = angle_difference(image_angle, pd1)
    image_angle -= (min(abs(dd1), 10) * sign(dd1))
    if (shoot == 0)
    {
        alarm[4] = 5
        shoot = 1
    }
    if (shoot == 2)
    {
        shoot = 0
        progress = 2
        alarm[1] = 15
        if (actnow == 1 && (!instance_exists(obj_pl_act)))
        {
            actnow = 2
            with (instance_create(x, y, obj_pl_act))
            {
                shotout = 1
                image_angle = point_direction(x, y, other.crosshair1x, other.crosshair1y)
                move_towards_point(other.crosshair1x, other.crosshair1y, 6)
                alarm[0] = 60
            }
        }
        else
        {
            with (instance_create(x, y, obj_pl_tranqdart))
            {
                image_angle = point_direction(x, y, other.crosshair1x, other.crosshair1y)
                move_towards_point(other.crosshair1x, other.crosshair1y, 18)
                saved = other.saved
            }
        }
    }
}
if (progress == 3)
{
    pd2 = point_direction(x, y, crosshair2x, crosshair2y)
    dd2 = angle_difference(image_angle, pd2)
    image_angle -= (min(abs(dd2), 10) * sign(dd2))
    if (shoot == 0)
    {
        alarm[4] = 5
        shoot = 1
    }
    if (shoot == 2)
    {
        shoot = 0
        progress = 4
        alarm[2] = 15
        if (actnow == 1 && (!instance_exists(obj_pl_act)))
        {
            actnow = 2
            with (instance_create(x, y, obj_pl_act))
            {
                shotout = 1
                image_angle = point_direction(x, y, other.crosshair2x, other.crosshair2y)
                move_towards_point(other.crosshair2x, other.crosshair2y, 6)
                alarm[0] = 60
            }
        }
        else
        {
            with (instance_create(x, y, obj_pl_tranqdart))
            {
                image_angle = point_direction(x, y, other.crosshair2x, other.crosshair2y)
                move_towards_point(other.crosshair2x, other.crosshair2y, 18)
                saved = other.saved
            }
        }
    }
}
if (progress == 5)
{
    pd3 = point_direction(x, y, crosshair3x, crosshair3y)
    dd3 = angle_difference(image_angle, pd3)
    image_angle -= (min(abs(dd3), 10) * sign(dd3))
    if (shoot == 0)
    {
        alarm[4] = 5
        shoot = 1
    }
    if (shoot == 2)
    {
        shoot = 0
        progress = 6
        alarm[0] = 15
        if (actnow == 1 && (!instance_exists(obj_pl_act)))
        {
            actnow = 2
            with (instance_create(x, y, obj_pl_act))
            {
                shotout = 1
                image_angle = point_direction(x, y, other.crosshair3x, other.crosshair3y)
                move_towards_point(other.crosshair3x, other.crosshair3y, 6)
                alarm[0] = 60
            }
        }
        else
        {
            with (instance_create(x, y, obj_pl_tranqdart))
            {
                image_angle = point_direction(x, y, other.crosshair3x, other.crosshair3y)
                move_towards_point(other.crosshair3x, other.crosshair3y, 18)
                saved = other.saved
            }
        }
    }
}
if (saved == 0)
{
    if (helpprogress == 0 && helpthere == 0 && instance_exists(obj_pl_helpbox))
    {
        helpthere = 1
        alarm[3] = 120
    }
    if (helpprogress == 1)
    {
        if (extra < 3)
            extra += 0.1
        extrax = random_range((-extra), extra)
        extray = random_range((-extra), extra)
    }
    if (helpthere == 1 && (!instance_exists(obj_pl_helpbox)))
    {
        helpprogress = 2
        saved = 1
        extrax = 0
        extray = 0
        with (obj_pl_tranqdart)
            saved = 1
        with (obj_pl_crosshair)
            saved = 1
    }
}

