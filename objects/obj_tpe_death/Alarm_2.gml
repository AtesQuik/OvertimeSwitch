deathprogress = 6
if instance_exists(obj_tpe_gunsnmercs)
{
    with (obj_tpe_gunsnmercs)
    {
        counter = 0
        progress = savedprogress
        if (savedprogress < 59)
        {
            with (instance_create(0, 0, obj_music_player))
                musictrack = 196
            if (!instance_exists(obj_tpe_background))
                instance_create(0, 0, obj_tpe_background)
        }
        else
        {
            with (instance_create(0, 0, obj_music_player))
                musictrack = 197
            if (!instance_exists(obj_tpe_background))
            {
                with (instance_create(0, 0, obj_tpe_background))
                    phasetwo = 1
            }
        }
    }
}

