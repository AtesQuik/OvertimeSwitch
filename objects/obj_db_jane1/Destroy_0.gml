if (global.janekilled == 0 && global.janehired == 1)
{
    if (global.teufortover == 0)
    {
        instance_create(x, y, obj_db_jane2)
        with (obj_music_player)
            instance_destroy()
    }
}

