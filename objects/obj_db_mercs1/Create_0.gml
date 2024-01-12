if (global.dbprogress > 3)
{
    instance_destroy()
    if (global.merc1hired == 1 && global.merc2hired == 1 && global.merc3hired == 1)
    {
        if (global.dbprogress < 5)
        {
            with (obj_music_player)
                instance_destroy()
            instance_create(350, 150, obj_db_mercs3)
            instance_create(350, 190, obj_db_mercs4)
            instance_create(220, 170, obj_db_mercs5)
        }
    }
    else if (global.dbprogress < 5)
        global.dbprogress = 5
}
else
{
    instance_create(350, 150, obj_solid)
    instance_create(350, 170, obj_solid)
    instance_create(350, 190, obj_solid)
}
progress = 0
image_speed = 0

