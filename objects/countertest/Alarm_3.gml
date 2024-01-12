counter += 1
if (counter == 1)
{
    with (instance_create(90, 165, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(75, 170, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(60, 180, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(0, 180, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(-15, 170, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(-30, 160, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(-45, 155, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(-60, 155, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(-75, 145, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(90, 45, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(75, 50, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(60, 60, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(45, 70, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(30, 80, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(15, 70, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(0, 60, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-15, 50, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-30, 40, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-45, 35, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-60, 35, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-75, 45, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
}
if (counter == 60)
    instance_create(x, y, obj_mbm_tele)
if (counter == 89)
{
    obj_evade_soul.x = 160
    obj_evade_soul.y = 160
    global.soulxposition = 160
    global.soulyposition = 160
}
if (counter == 95)
{
    with (instance_create(-30, 160, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 20
        gotox = 90
        gotoy = 160
    }
    with (instance_create(350, 160, obj_frontier_justice))
    {
        damagedone = other.damagedone
        spd = 20
        gotox = 230
        gotoy = 160
    }
}
if (counter == 120)
    instance_create(x, y, obj_mbm_tele)
if (counter == 149)
{
    global.soultype = 0
    obj_evade_soul.x = 160
    obj_evade_soul.y = 160
    global.soulxposition = 160
    global.soulyposition = 160
}
if (counter == 150)
{
    with (instance_create(55, 105, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(55, 90, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(55, 75, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(50, 60, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(50, 45, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(45, 30, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(45, 15, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(40, 0, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(40, -15, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(35, -30, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(30, -45, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(30, -60, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(35, -75, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(40, -90, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(45, -105, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(50, -120, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(60, -135, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(65, -150, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(75, -165, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(80, -180, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(80, -195, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(80, -210, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(80, -225, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(85, -240, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 1
    }
    with (instance_create(185, 105, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(185, 90, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(185, 75, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(175, 60, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(175, 45, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(170, 30, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(170, 15, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(165, 0, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(160, -15, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(155, -30, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(150, -45, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(150, -60, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(155, -75, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(155, -90, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(160, -105, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(165, -120, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(175, -135, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(180, -150, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(190, -165, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(195, -180, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(195, -195, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(195, -210, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(195, -225, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
    with (instance_create(190, -240, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 1
    }
}
if (counter == 230)
    instance_create(x, y, obj_mbm_tele)
if (counter == 259)
{
    global.soultype = 1
    obj_evade_soul.x = 160
    obj_evade_soul.y = 160
    global.soulxposition = 160
    global.soulyposition = 160
    with (instance_create(135, 170, obj_dell_platform))
        spd = 0
    with (instance_create(185, 170, obj_dell_platform))
        spd = 0
}
if (counter == 280)
{
    global.soultype = 1
    with (instance_create(-30, 180, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 15
        gotox = 90
        gotoy = 180
    }
    with (instance_create(350, 180, obj_frontier_justice))
    {
        damagedone = other.damagedone
        spd = 15
        gotox = 230
        gotoy = 180
    }
}
if (counter == 310)
    instance_create(x, y, obj_mbm_tele)
if (counter == 339)
{
    global.soultype = 1
    obj_evade_soul.x = 160
    obj_evade_soul.y = 160
    global.soulxposition = 160
    global.soulyposition = 160
    with (instance_create(160, 170, obj_dell_platform))
        spd = 0
}
if (counter == 360)
{
    global.soultype = 1
    with (instance_create(65, 285, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 0
        movedirection = 2
    }
    with (instance_create(155, 410, obj_dell_sidewrench))
    {
        damagedone = other.damagedone
        spd = 5
        leftorright = 1
        movedirection = 2
    }
}
if (counter == 430)
    instance_create(x, y, obj_mbm_tele)
if (counter == 459)
{
    global.soultype = 1
    obj_evade_soul.x = 160
    obj_evade_soul.y = 160
    global.soulxposition = 160
    global.soulyposition = 160
    with (instance_create(160, 170, obj_dell_platform))
        spd = 0
}
if (counter == 485)
{
    with (instance_create(-30, 150, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 10
        gotox = 90
        gotoy = 150
    }
    with (instance_create(350, 150, obj_frontier_justice))
    {
        damagedone = other.damagedone
        spd = 10
        gotox = 230
        gotoy = 150
    }
}
if (counter == 500)
{
    with (instance_create(-30, 185, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 10
        gotox = 90
        gotoy = 185
    }
    with (instance_create(350, 185, obj_frontier_justice))
    {
        damagedone = other.damagedone
        spd = 10
        gotox = 230
        gotoy = 185
    }
}
if (counter == 540)
{
}

