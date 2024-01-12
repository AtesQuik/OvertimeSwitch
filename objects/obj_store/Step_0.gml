if (progress == 0 || progress == 3 || progress == 4 || progress == 5)
    script_execute(scr_text_sounds)
CSTR = STR[N]
if keyboard_check_pressed(global.cancelkey)
{
    if (progress == 1)
    {
        POS = 0
        selected = 0
        itemselected = 0
        progress = 0
    }
    if (progress == 2)
    {
        POS = 0
        selected = 0
        yesorno = 0
        itemselected = 0
        buytext = buytalk1
        progress = 1
    }
}
if (progress == 0)
{
    CSTR = STR[0]
    if (keyboard_check_pressed(global.downkey) && selected < 3)
        selected += 1
    if (keyboard_check_pressed(global.upkey) && selected > 0)
        selected -= 1
    if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
    {
        instance_create(x, y, obj_wait_for_me)
        if (selected == 0)
        {
            selected = 0
            POS = 0
            buytext = buytalk1
            progress = 1
        }
        if (selected == 1)
        {
            N = 1
            selected = 0
            POS = 0
            progress = 4
        }
        if (selected == 2)
        {
            N = 3
            selected = 0
            POS = 0
            progress = 4
        }
        if (selected == 3)
        {
            N = 9
            selected = 0
            POS = 0
            progress = 5
        }
    }
}
if (progress == 1)
{
    if keyboard_check_pressed(global.downkey)
    {
        if (selected < 2)
            selected += 1
        else if (selected == 2)
        {
            if (item3 != 0)
                selected = 3
        }
        else if (selected == 3)
        {
            if (item4 != 0)
                selected = 4
        }
    }
    if (keyboard_check_pressed(global.upkey) && selected > 0)
        selected -= 1
    if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
    {
        instance_create(x, y, obj_wait_for_me)
        progress = 2
        yesorno = 0
        if (selected == 0)
        {
            itemselected = 1
            progress = 2
        }
        if (selected == 1)
        {
            itemselected = 2
            progress = 2
        }
        if (selected == 2)
        {
            if (item3 != 0)
            {
                itemselected = 3
                progress = 2
            }
            else
            {
                progress = 0
                POS = 0
                selected = 0
            }
        }
        if (selected == 3)
        {
            if (item4 != 0)
            {
                itemselected = 4
                progress = 2
            }
            else
            {
                progress = 0
                POS = 0
                selected = 0
            }
        }
        if (selected == 4)
        {
            progress = 0
            POS = 0
            selected = 0
        }
    }
}
if (progress == 2)
{
    if keyboard_check_pressed(global.downkey)
        yesorno = 1
    if keyboard_check_pressed(global.upkey)
        yesorno = 0
    if (keyboard_check_pressed(global.actionkey) && yesorno == 1 && (!instance_exists(obj_wait_for_me)))
    {
        instance_create(x, y, obj_wait_for_me)
        buytext = buytalk1
        progress = 1
        yesorno = 0
    }
    if (keyboard_check_pressed(global.actionkey) && yesorno == 0 && (!instance_exists(obj_wait_for_me)))
    {
        instance_create(x, y, obj_wait_for_me)
        if (itemselected == 1)
        {
            if (global.itemamount < 8)
            {
                if (global.australium >= price1)
                {
                    global.australium -= price1
                    script_execute(scr_item_add, item1)
                    progress = 1
                    yesorno = 0
                    buytext = buytalk3
                    audio_play_sound(snd_activate_save, 1, false)
                }
                else
                {
                    progress = 4
                    N = 2
                }
            }
            else
            {
                progress = 4
                N = 8
            }
        }
        if (itemselected == 2)
        {
            if (global.inventoryfull == 0)
            {
                if (global.australium >= price2)
                {
                    global.australium -= price2
                    script_execute(scr_item_add, item2)
                    progress = 1
                    yesorno = 0
                    buytext = buytalk3
                    audio_play_sound(snd_activate_save, 1, false)
                }
                else
                {
                    progress = 4
                    N = 2
                }
            }
            else
            {
                progress = 4
                N = 8
            }
        }
        if (itemselected == 3)
        {
            if (global.inventoryfull == 0)
            {
                if (global.australium >= price3)
                {
                    global.australium -= price3
                    script_execute(scr_item_add, item3)
                    progress = 1
                    yesorno = 0
                    buytext = buytalk3
                    audio_play_sound(snd_activate_save, 1, false)
                }
                else
                {
                    progress = 4
                    N = 2
                }
            }
            else
            {
                progress = 4
                N = 8
            }
        }
        if (itemselected == 4)
        {
            if (global.inventoryfull == 0)
            {
                if (global.australium >= price4)
                {
                    global.australium -= price4
                    script_execute(scr_item_add, item4)
                    progress = 1
                    yesorno = 0
                    buytext = buytalk3
                    audio_play_sound(snd_activate_save, 1, false)
                }
                else
                {
                    progress = 4
                    N = 2
                }
            }
            else
            {
                progress = 4
                N = 8
            }
        }
        yesorno = 0
    }
}
if (progress == 3)
{
    selected = 0
    yesorno = 0
    if (keyboard_check_pressed(global.actionkey) && POS >= string_length(STR[N]))
    {
        progress = 0
        POS = 0
    }
}
if (progress == 4)
{
    selected = 0
    yesorno = 0
    if (keyboard_check_pressed(global.actionkey) && POS >= string_length(STR[N]))
    {
        if (N > 2 && N < 5)
        {
            if (N < 5)
            {
                POS = 0
                N += 1
            }
            else
            {
                progress = 0
                POS = 0
            }
        }
        else
        {
            progress = 0
            POS = 0
        }
    }
}
if (progress == 5)
{
    selected = 0
    yesorno = 0
    if (leaving == 0)
    {
        if (keyboard_check_pressed(global.actionkey) && POS >= string_length(STR[N]))
        {
            leaving = 1
            instance_create(x, y, obj_room_fade_out)
        }
    }
    else
        script_execute(scr_transition_when_ready)
}
if (progress == 0 || progress == 3 || progress == 4 || progress == 5)
{
    if (POS < (string_length(CSTR) + 1))
        image_speed = 0.35
    else
    {
        image_speed = 0
        image_index = 0
    }
}
else
{
    image_speed = 0
    image_index = 0
}
with (obj_protagonist)
    action_kill_object()

