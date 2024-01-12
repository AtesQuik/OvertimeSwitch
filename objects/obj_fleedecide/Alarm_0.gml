if (global.fleechance == 1)
{
    audio_play_sound(snd_flee, 1, false)
    instance_create((__view_get( e__VW.XView, (0 << 0) ) + 36), (__view_get( e__VW.YView, (0 << 0) ) + 142), obj_soul_flee)
    instance_destroy()
}
else
{
    audio_play_sound(snd_exclamation, 1, false)
    global.battleapproachstring = "* Your attempt at fleeing was#  not successful..."
    instance_create(0, 0, obj_fleewave)
    instance_create(108, 0, obj_fleewave)
    instance_create(214, 0, obj_fleewave)
    instance_destroy()
}

