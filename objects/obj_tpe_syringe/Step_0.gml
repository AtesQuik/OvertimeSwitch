if (x < 205 && instance_exists(obj_tpe_misha1))
{
    audio_play_sound(snd_enemy_hurt, 1, false)
    with (obj_tpe_misha1)
    {
        progress = 5
        heads = 4
    }
    instance_destroy()
}

