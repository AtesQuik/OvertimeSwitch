if (global.lineprogress < 3)
{
    if (global.mbmkey1 == 0 && global.mbmkey2 == 0)
        image_index = 2
    if (global.mbmkey1 == 1 && global.mbmkey2 == 0)
        image_index = 1
    if (global.mbmkey1 == 0 && global.mbmkey2 == 1)
        image_index = 1
    if (global.mbmkey1 == 1 && global.mbmkey2 == 1 && global.lineprogress == 1)
        image_index = 4
    if (global.mbmkey1 == 1 && global.mbmkey2 == 1 && global.lineprogress == 2)
        image_index = 5
}
else
    instance_destroy()
