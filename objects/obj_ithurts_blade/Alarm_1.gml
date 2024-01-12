image_index = 1
progress = 4
xshake = 0
yshake = 0
if (leftorright == 0)
{
    with (instance_create(127, 165, obj_ithurts_bladepiece))
    {
        yspeed = -3
        damagedone = other.damagedone
    }
    with (instance_create(140, 165, obj_ithurts_bladepiece))
    {
        yspeed = 3
        damagedone = other.damagedone
    }
    with (instance_create(151, 171, obj_ithurts_bladepiece))
    {
        yspeed = -3
        damagedone = other.damagedone
    }
    with (instance_create(164, 171, obj_ithurts_bladepiece))
    {
        yspeed = 3
        damagedone = other.damagedone
    }
    with (instance_create(164, 159, obj_ithurts_bladepiece))
    {
        yspeed = -3
        damagedone = other.damagedone
    }
}
else
{
    with (instance_create(156, 162, obj_ithurts_bladepiece))
    {
        yspeed = 3
        damagedone = other.damagedone
    }
    with (instance_create(155, 150, obj_ithurts_bladepiece))
    {
        yspeed = -3
        damagedone = other.damagedone
    }
    with (instance_create(168, 150, obj_ithurts_bladepiece))
    {
        yspeed = 3
        damagedone = other.damagedone
    }
    with (instance_create(179, 156, obj_ithurts_bladepiece))
    {
        yspeed = -3
        damagedone = other.damagedone
    }
    with (instance_create(192, 156, obj_ithurts_bladepiece))
    {
        yspeed = 3
        damagedone = other.damagedone
    }
}

