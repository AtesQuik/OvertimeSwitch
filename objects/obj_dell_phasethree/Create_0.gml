progress = 0
if instance_exists(obj_evade_ground)
{
    with (obj_evade_ground)
    {
        noboxtoevade = 1
        instance_destroy()
    }
}
if instance_exists(obj_battle_gui)
{
    with (obj_battle_gui)
        instance_destroy()
}
instance_create(118, 192, obj_dell_evade_floor)
instance_create(209, 197, obj_dell_extraground)
instance_create(200, 226, obj_dell_item)
alarm[0] = 90

