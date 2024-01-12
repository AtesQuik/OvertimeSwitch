counter += 1
if (counter == 15)
{
    with (instance_create(0, 0, obj_dell_box))
    {
        x1 = 141
        y1 = 131
        x2 = 180
        y2 = 160
    }
}
if (counter == 30)
{
    audio_play_sound(snd_sword2, 1, false)
    with (instance_create(140, 30, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 1
        movetoy = 65
        yspeed = 10
    }
    with (instance_create(155, 30, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 1
        movetoy = 65
        yspeed = 10
    }
    with (instance_create(170, 30, obj_dell_wrench))
    {
        damagedone = other.damagedone
        bottomortop = 1
        movetoy = 65
        yspeed = 10
    }
}

