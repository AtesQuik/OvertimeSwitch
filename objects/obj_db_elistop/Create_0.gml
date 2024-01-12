progress = 0
if (global.dbprogress > 0)
    instance_destroy()
else if (global.genocide == 1)
{
    global.dbprogress = 1
    with (instance_create(420, 90, obj_db_disp1))
    {
        sprite_index = spr_dispenser_talk
        image_speed = 0
    }
}

