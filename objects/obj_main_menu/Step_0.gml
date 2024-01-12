if (stretch < 4)
    stretch += 0.02
if (progress < 2)
{
    if (keyboard_check_pressed(global.rightkey) && (!instance_exists(obj_wait_for_me)))
    {
        if (xposition < 1)
            xposition += 1
    }
    if (keyboard_check_pressed(global.leftkey) && (!instance_exists(obj_wait_for_me)))
    {
        if (xposition > 0)
            xposition -= 1
    }
}
if (progress == 0)
{
    if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
    {
        if (xposition == 0)
        {
            if instance_exists(obj_music_player)
            {
                with (obj_music_player)
                    instance_destroy()
            }
            script_execute(scr_load_game)
        }
        else
        {
            progress = 1
            xposition = 0
        }
        instance_create(x, y, obj_wait_for_me)
    }
}
if (progress == 1)
{
    if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
    {
        if (xposition == 0)
        {
            progress = 0
            xposition = 0
            stretch = 0
        }
        else
        {
            progress = 2
            alarm[0] = 1
        }
        instance_create(x, y, obj_wait_for_me)
    }
}

