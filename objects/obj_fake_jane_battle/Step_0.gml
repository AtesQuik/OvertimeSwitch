if (progress == 1 && (!instance_exists(obj_speech_bubble_noevade)))
{
    if (global.genocide == 0)
    {
        if (global.soultype == 0)
        {
            if (!instance_exists(obj_battle_spraycan))
                instance_create(224, 160, obj_battle_spraycan)
        }
        else
            progress = 2
    }
    else if (global.genocide == 1)
        progress = 4
}
if (progress == 2)
{
    progress = 3
    alarm[1] = 90
}
if (progress == 4 && (!instance_exists(obj_speech_bubble_noevade)))
    room_goto(rm_db_battle_soldier2)

