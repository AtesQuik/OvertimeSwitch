if (global.dbprogress < 8)
{
    if (global.spykilled == 0)
        instance_create(x, y, obj_db_spyoutro)
    else
    {
        global.dbprogress = 8
        if (global.gotsapper == 0)
            instance_create(500, 170, obj_sapper_item)
    }
}

