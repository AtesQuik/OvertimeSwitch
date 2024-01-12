if (movedirection == 1)
{
    if (x < 340)
        x += spd
    else
        instance_destroy()
    if (place_meeting((x + 1), y, obj_evade_soul) || place_meeting((x - 1), y, obj_evade_soul))
        movedirection = 2
}
if (movedirection == 2)
{
    if (x > -20)
        x -= spd
    else
        instance_destroy()
    if (place_meeting((x + 1), y, obj_evade_soul) || place_meeting((x - 1), y, obj_evade_soul))
        movedirection = 1
}

