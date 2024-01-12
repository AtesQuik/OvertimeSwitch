if (global.mcturrets2 == 0)
{
    audio_play_sound(snd_step, 1, false)
    with (obj_activation_object)
        instance_destroy()
    global.mcturrets2 = 1
    instance_create(0, 0, obj_db_puzzlesolved)
}
