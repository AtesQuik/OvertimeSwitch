progress = 0
if (global.dbprogress > 5)
    instance_destroy()
else if (global.genocide == 1)
{
    global.dbprogress = 6
    instance_destroy()
}

