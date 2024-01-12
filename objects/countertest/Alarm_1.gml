counter += 1
if (counter == 1)
{
    global.soultype = 1
    with (instance_create(160, 170, obj_dell_platform))
        spd = 0
    with (instance_create(265, 65, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 2
        spd = 3
    }
    with (instance_create(-105, 150, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 3
    }
}
if (counter == 100)
    instance_create(x, y, obj_mbm_tele)
if (counter == 129)
{
    global.soultype = 0
    obj_evade_soul.x = 160
    obj_evade_soul.y = 160
    global.soulxposition = 160
    global.soulyposition = 160
}
if (counter == 130)
{
    with (instance_create(-30, 160, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 20
        gotox = 90
        gotoy = 160
    }
    with (instance_create(160, 345, obj_frontier_justice))
    {
        damagedone = other.damagedone
        spd = 20
        gotox = 160
        gotoy = 225
    }
    with (instance_create(350, 160, obj_frontier_justice))
    {
        damagedone = other.damagedone
        spd = 20
        gotox = 230
        gotoy = 160
    }
    with (instance_create(160, -25, obj_frontier_justice))
    {
        damagedone = other.damagedone
        spd = 20
        gotox = 160
        gotoy = 95
    }
}
if (counter == 130)
    global.soultype = 0
if (counter == 160)
    instance_create(x, y, obj_mbm_tele)
if (counter == 189)
{
    global.soultype = 1
    obj_evade_soul.x = 160
    obj_evade_soul.y = 160
    global.soulxposition = 160
    global.soulyposition = 160
}
if (counter == 190)
{
    with (instance_create(55, 65, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 3
    }
    with (instance_create(70, 65, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 3
    }
    with (instance_create(240, 165, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 2
        spd = 3
    }
    with (instance_create(255, 165, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 2
        spd = 3
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
    with (instance_create(160, 170, obj_dell_platform))
        spd = 0
}
if (counter == 275)
{
    global.soultype = 1
    with (instance_create(0, 0, obj_dell_box))
    {
        x1 = 124
        y1 = 131
        x2 = 195
        y2 = 159
    }
}
if (counter == 290)
{
    audio_play_sound(snd_sword2, 1, false)
    with (instance_create(125, 30, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 1
        movetoy = 70
        yspeed = 10
    }
    with (instance_create(140, 30, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 1
        movetoy = 70
        yspeed = 10
    }
    with (instance_create(155, 30, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 1
        movetoy = 70
        yspeed = 10
    }
    with (instance_create(170, 30, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 1
        movetoy = 70
        yspeed = 10
    }
    with (instance_create(185, 30, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 1
        movetoy = 70
        yspeed = 10
    }
}
if (counter == 315)
{
    global.soultype = 1
    with (instance_create(0, 0, obj_dell_box))
    {
        x1 = 124
        y1 = 163
        x2 = 195
        y2 = 190
    }
}
if (counter == 330)
{
    audio_play_sound(snd_sword2, 1, false)
    with (instance_create(125, 185, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 0
        movetoy = 165
        yspeed = 10
    }
    with (instance_create(140, 185, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 0
        movetoy = 165
        yspeed = 10
    }
    with (instance_create(155, 185, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 0
        movetoy = 165
        yspeed = 10
    }
    with (instance_create(170, 185, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 0
        movetoy = 165
        yspeed = 10
    }
    with (instance_create(185, 185, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 0
        movetoy = 165
        yspeed = 10
    }
}
if (counter == 345)
{
    global.soultype = 1
    with (instance_create(0, 0, obj_dell_box))
    {
        x1 = 124
        y1 = 131
        x2 = 195
        y2 = 159
    }
}
if (counter == 360)
{
    audio_play_sound(snd_sword2, 1, false)
    with (instance_create(125, 30, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 1
        movetoy = 70
        yspeed = 10
    }
    with (instance_create(140, 30, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 1
        movetoy = 70
        yspeed = 10
    }
    with (instance_create(155, 30, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 1
        movetoy = 70
        yspeed = 10
    }
    with (instance_create(170, 30, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 1
        movetoy = 70
        yspeed = 10
    }
    with (instance_create(185, 30, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 1
        movetoy = 70
        yspeed = 10
    }
}
if (counter == 375)
    instance_create(x, y, obj_mbm_tele)
if (counter == 404)
{
    global.soultype = 0
    obj_evade_soul.x = 160
    obj_evade_soul.y = 160
    global.soulxposition = 160
    global.soulyposition = 160
}
if (counter == 405)
{
    with (instance_create(120, 170, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(105, 170, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(90, 170, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(75, 165, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(60, 160, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(45, 155, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(30, 155, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(15, 160, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(0, 165, obj_dell_wrench))
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
    with (instance_create(-30, 175, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(-45, 185, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(-105, 185, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(-120, 180, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(-135, 175, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(-150, 170, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(-165, 170, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(-180, 170, obj_dell_wrench))
    {
        bottomortop = 0
        movedirection = 1
        spd = 4
    }
    with (instance_create(120, 50, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(105, 50, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(90, 50, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(75, 45, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(60, 40, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(45, 35, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(30, 35, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(15, 40, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(0, 45, obj_dell_wrench))
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
    with (instance_create(-30, 55, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-45, 65, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-60, 70, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-75, 75, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-90, 70, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-105, 65, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-120, 60, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-135, 55, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-150, 50, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-165, 50, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
    with (instance_create(-180, 50, obj_dell_wrench))
    {
        bottomortop = 1
        movedirection = 1
        spd = 4
    }
}
if (counter == 485)
{
    with (instance_create(-60, 160, obj_frontier_justice))
    {
        playsound = 1
        damagedone = other.damagedone
        spd = 20
        gotox = 80
        gotoy = 160
    }
}
if (counter == 530)
{
}

