if (global.dbover == 1)
    instance_destroy()
else if (global.genocide == 1)
{
    global.dbover = 1
    instance_destroy()
}
progress = 0
throwing = 0

