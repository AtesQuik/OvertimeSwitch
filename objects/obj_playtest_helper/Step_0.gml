if (selection == 0)
{
    progress = 0
    variable = 0
    variablevalue = 0
    newxpos = 0
    newypos = 0
    roomgoto = rm_intro
    keyboard_string = ""
    if keyboard_check_pressed(ord("1"))
    {
        selection = 1
        instance_create(x, y, obj_wait_for_me)
    }
    if keyboard_check_pressed(ord("2"))
    {
        selection = 2
        instance_create(x, y, obj_wait_for_me)
    }
    if keyboard_check_pressed(ord("3"))
    {
        selection = 3
        instance_create(x, y, obj_wait_for_me)
    }
    if keyboard_check_pressed(ord("4"))
    {
        selection = 4
        instance_create(x, y, obj_wait_for_me)
    }
    if keyboard_check_pressed(ord("5"))
    {
        selection = 5
        instance_create(x, y, obj_wait_for_me)
    }
    if keyboard_check_pressed(vk_escape)
        instance_destroy()
}
if (selection == 1 && (!instance_exists(obj_wait_for_me)))
{
    if (progress == 0)
    {
        variable = string_copy(keyboard_string, 1, 100)
        if keyboard_check_pressed(vk_return)
        {
            progress = 1
            keyboard_string = ""
            instance_create(x, y, obj_wait_for_me)
        }
        if keyboard_check_pressed(vk_escape)
            selection = 0
    }
    if (progress == 1 && (!instance_exists(obj_wait_for_me)))
    {
        if keyboard_check_pressed(vk_return)
        {
            selection = 0
            keyboard_string = ""
        }
        if keyboard_check_pressed(vk_escape)
            selection = 0
    }
}
if (selection == 2 && (!instance_exists(obj_wait_for_me)))
{
    if (progress == 0)
    {
        newxpos = string_copy(keyboard_string, 1, 100)
        if keyboard_check_pressed(vk_return)
        {
            progress = 1
            keyboard_string = ""
            instance_create(x, y, obj_wait_for_me)
        }
        if keyboard_check_pressed(vk_escape)
            selection = 0
    }
    if (progress == 1 && (!instance_exists(obj_wait_for_me)))
    {
        newypos = string_copy(keyboard_string, 1, 100)
        if keyboard_check_pressed(vk_return)
        {
            progress = 2
            keyboard_string = ""
            instance_create(x, y, obj_wait_for_me)
        }
        if keyboard_check_pressed(vk_escape)
            progress = 0
    }
    if (progress == 2 && (!instance_exists(obj_wait_for_me)))
    {
        selection = 0
        if instance_exists(obj_protagonist)
        {
            obj_protagonist.x = newxpos
            obj_protagonist.y = newypos
        }
    }
}
if (selection == 3 && (!instance_exists(obj_wait_for_me)))
{
    if (progress == 0)
    {
        roomgoto = string_copy(keyboard_string, 1, 100)
        if keyboard_check_pressed(vk_return)
        {
            progress = 1
            instance_create(x, y, obj_wait_for_me)
        }
        if keyboard_check_pressed(vk_escape)
            selection = 0
    }
    if (progress == 1 && (!instance_exists(obj_wait_for_me)))
        room_goto(roomgoto)
}
if (selection == 4 && (!instance_exists(obj_wait_for_me)))
{
    if (progress == 0)
    {
        progress = 1
        audio_play_sound(snd_activate_save, 1, false)
        global.playerhealth = global.fullhealth
        instance_create(x, y, obj_wait_for_me)
    }
    if (progress == 1 && (!instance_exists(obj_wait_for_me)))
        selection = 0
}
if (selection == 5 && (!instance_exists(obj_wait_for_me)))
{
    if (progress == 0)
    {
        progress = 1
        audio_play_sound(snd_spare, 1, false)
        global.randomsteps = 1
        global.stepstaken = 1000
        instance_create(x, y, obj_wait_for_me)
    }
    if (progress == 1 && (!instance_exists(obj_wait_for_me)))
        selection = 0
}

