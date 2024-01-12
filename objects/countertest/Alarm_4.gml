counter += 1
if (counter == 1)
{
    with (instance_create(360, -25, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 20
        gotox = 240
        gotoy = 90
    }
}
if (counter == 30)
{
    with (instance_create(45, 270, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 20
        gotox = 100
        gotoy = 215
    }
}
if (counter == 60)
{
    with (instance_create(-30, 160, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 20
        gotox = 55
        gotoy = 160
    }
}
if (counter == 90)
{
    with (instance_create(-30, -35, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 20
        gotox = 90
        gotoy = 85
    }
}
if (counter == 120)
{
    with (instance_create(160, -35, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 20
        gotox = 160
        gotoy = 85
    }
    with (instance_create(10, 265, obj_frontier_justice))
    {
        damagedone = other.damagedone
        spd = 20
        gotox = 90
        gotoy = 185
    }
}
if (counter == 150)
{
    with (instance_create(130, -35, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 20
        gotox = 130
        gotoy = 85
    }
    with (instance_create(190, -35, obj_frontier_justice))
    {
        damagedone = other.damagedone
        spd = 20
        gotox = 190
        gotoy = 85
    }
}
if (counter == 180)
{
    with (instance_create(-30, 185, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 20
        gotox = 40
        gotoy = 185
    }
    with (instance_create(350, 135, obj_frontier_justice))
    {
        damagedone = other.damagedone
        spd = 20
        gotox = 280
        gotoy = 135
    }
}
if (counter == 210)
{
    with (instance_create(160, -55, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 20
        gotox = 160
        gotoy = 65
        image_xscale = 2
        image_yscale = 2
    }
}
if (counter == 240)
{
    with (instance_create(355, 230, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 20
        gotox = 280
        gotoy = 195
    }
}
