if (global.lineprogress < 3)
{
    if (global.mbmkey1 == 0 && global.mbmkey2 == 0)
        instance_destroy()
    if (global.mbmkey1 == 1 && global.mbmkey2 == 0)
        image_index = 3
    if (global.mbmkey1 == 0 && global.mbmkey2 == 1)
        image_index = 3
    if (global.mbmkey1 == 1 && global.mbmkey2 == 1 && global.lineprogress == 1)
        image_index = 3
    if (global.mbmkey1 == 1 && global.mbmkey2 == 1 && global.lineprogress == 2)
        instance_destroy()
}
else
    instance_destroy()
