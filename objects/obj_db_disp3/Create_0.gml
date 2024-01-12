if (global.dbprogress > 2)
{
    instance_destroy()
    if (global.genocide == 0)
    {
        if (global.gotdog == 0 && global.ingredients > 40)
            instance_create(344, 120, obj_db_getdog)
    }
    else
    {
        instance_create(x, (y + 10), obj_db_dispnote)
        if (global.gotdog == 0)
            instance_create(344, 120, obj_db_getdog)
    }
}
else if (global.genocide == 1)
{
    global.dbprogress = 3
    if (global.gotdog == 0)
    {
        instance_create(344, 120, obj_db_getdog)
        instance_create(x, (y + 10), obj_db_dispnote)
    }
    instance_destroy()
}
progress = 0
image_speed = 0.2

