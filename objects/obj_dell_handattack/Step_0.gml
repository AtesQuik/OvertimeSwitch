if (handdirection == 0)
{
    if (image_index == 1)
        extray = -1
    if (image_index == 2)
        extray = 0
    if (image_index == 3)
        extray = 3
    if (image_index == 4)
        extray = 2
}
if (handdirection == 1)
{
    if (image_index == 1)
        extrax = -2
    if (image_index == 2)
        extrax = -3
    if (image_index == 3)
        extrax = 3
    if (image_index == 4)
        extrax = 1
}
if (handdirection == 2)
{
    if (image_index == 0)
        extray = 2
    if (image_index == 1)
        extray = 3
    if (image_index == 2)
        extray = 0
    if (image_index == 3)
        extray = -1
    if (image_index == 4)
        extray = 0
}
if (handdirection == 3)
{
    if (image_index == 1)
        extrax = -2
    if (image_index == 2)
        extrax = -3
    if (image_index == 3)
        extrax = 3
    if (image_index == 4)
        extrax = 1
}
if (instance_number(obj_dell_handattack) > 1 && dontdestroyyet == 1)
    instance_destroy()

