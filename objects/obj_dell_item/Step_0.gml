if (progress == 0)
{
    if place_meeting(x, y, obj_evade_soul)
    {
        if (activated == 0)
        {
            activated = 1
            audio_play_sound(snd_battlemenu_move, 1, false)
            with (obj_evade_soul)
                instance_destroy()
        }
    }
    if (activated == 1)
    {
        if keyboard_check_pressed(global.actionkey)
        {
            progress = 1
            audio_play_sound(snd_battlemenu_select, 1, false)
            instance_create(x, y, obj_wait_for_me)
        }
    }
}
if (progress == 1)
{
    if (global.gotsapper == 1 && global.removedsapper == 0)
    {
        if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
        {
            progress = 3
            audio_play_sound(snd_battlemenu_select, 1, false)
            instance_create(x, y, obj_wait_for_me)
        }
    }
    else
    {
        progress = 2
        with (instance_create(0, 0, obj_text_box_battle))
        {
            MAXSTR = 0
            STR[0] = "* You don't have any useful#  items for this situation.#* Try again, pal."
        }
    }
}
if (progress == 3)
{
    progress = 4
    global.removedsapper = 1
    if (!instance_exists(obj_textbox_item))
    {
        with (instance_create(x, y, obj_textbox_item))
        {
            MAXSTR = 0
            STR[0] = "* You put the Sapper on#  the Sentry. You hear loud#  buzzing..."
        }
    }
    if (global.item1 == "Sapper")
        global.item1 = 0
    if (global.item2 == "Sapper")
        global.item2 = 0
    if (global.item3 == "Sapper")
        global.item3 = 0
    if (global.item4 == "Sapper")
        global.item4 = 0
    if (global.item5 == "Sapper")
        global.item5 = 0
    if (global.item6 == "Sapper")
        global.item6 = 0
    if (global.item7 == "Sapper")
        global.item7 = 0
    if (global.item8 == "Sapper")
        global.item8 = 0
}
if (progress == 4 && (!instance_exists(obj_textbox_item)))
{
    progress = 5
    if instance_exists(obj_dell_battle)
    {
        with (obj_dell_battle)
            heads = 11
    }
    if instance_exists(obj_dell_z)
    {
        with (obj_dell_z)
            instance_destroy()
    }
    with (instance_create(110, 70, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 85
        fontname = 10
        bubbleshape = 2
        MAXSTR = 1
        STR[0] = "what the?"
        STR[1] = "youre sappin#my sentry?"
    }
}
if (progress == 5 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 1)
    {
        progress = 6
        alarm[0] = 15
    }
}

