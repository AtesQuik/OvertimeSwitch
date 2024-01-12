if (startx == 80 && extrabonesaw < 1)
{
    with (instance_create(240, 96, obj_sani_bonesaw))
    {
        image_index = 1
        sawdirection = -1
        damagedone = other.damagedone
        extrabonesaw = (other.extrabonesaw + 1)
    }
}
else if (startx == 240 && extrabonesaw < 1)
{
    with (instance_create(80, 96, obj_sani_bonesaw))
    {
        image_index = 0
        sawdirection = 1
        damagedone = other.damagedone
        extrabonesaw = (other.extrabonesaw + 1)
    }
}

