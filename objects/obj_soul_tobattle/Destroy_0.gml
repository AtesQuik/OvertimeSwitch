if instance_exists(obj_blackscreen)
{
    with (obj_blackscreen)
        instance_destroy()
}
if (global.encountersdisabled == 1)
    room_goto(global.battleroom)
else if (global.enemiesleft == 0)
    room_goto(rm_nobodycame)
else if (global.justfled == 1)
    room_goto(global.fledroom)
else
    room_goto(global.battleroom)

