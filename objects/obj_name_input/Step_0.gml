if (progress == 1)
{
    CSTR = STR[0]
    POS += 0.5
    if (voicenow < 2)
        voicenow += 1
    else
        voicenow = 0
    if (POS < (string_length(CSTR) + 1))
    {
        if (voicenow == 0)
            audio_play_sound(snd_text_battle, 1, false)
    }
    if (POS >= string_length(CSTR))
        progress = 2
}
if (progress == 2)
{
    progress = 3
    alarm[0] = 30
}
if (progress == 4)
{
    remaining = (6 - string_length(global.playername))
    if ((!keyboard_check(vk_space)) && string_length(global.playername) < 6)
        global.playername = string_copy(keyboard_string, 1, 6)
    if (keyboard_check_pressed(vk_anykey) && string_length(global.playername) < 6)
        audio_play_sound(snd_text_battle, 1, false)
    if (keyboard_check_pressed(vk_space) && global.playername != 0)
    {
        POS = 0
        progress = 5
        audio_play_sound(snd_battlemenu_select, 1, false)
    }
}
if (progress == 5)
{
    CSTR = STR[1]
    POS += 0.5
    if (voicenow < 2)
        voicenow += 1
    else
        voicenow = 0
    if (POS < (string_length(CSTR) + 1))
    {
        if (voicenow == 0)
            audio_play_sound(snd_text_battle, 1, false)
    }
    if (POS >= string_length(CSTR))
        progress = 6
}
if (progress == 6)
{
    if (keyboard_check_pressed(global.rightkey) && yesorno == 0)
    {
        yesorno = 1
        audio_play_sound(snd_battlemenu_move, 1, false)
    }
    if (keyboard_check_pressed(global.leftkey) && yesorno == 1)
    {
        yesorno = 0
        audio_play_sound(snd_battlemenu_move, 1, false)
    }
    if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
    {
        if (yesorno == 0)
        {
            progress = 7
            audio_play_sound(snd_battlemenu_select, 1, false)
        }
        if (yesorno == 1)
        {
            audio_play_sound(snd_battlemenu_select, 1, false)
            progress = 4
            yesorno = 0
            global.playername = ""
            keyboard_string = ""
        }
    }
}
if (progress == 7)
{
    progress = 8
    global.textboxtop = 0
    script_execute(scr_name_quips)
}
if (progress == 8 && (!instance_exists(obj_text_box)))
    progress = 9
if (progress == 9)
{
    global.inputname = 1
    if (blackness < 1)
        blackness += 0.005
    if (stretch < 4)
        stretch += 0.02
    else
    {
        script_execute(scr_save_universal)
        progress = 10
        audio_play_sound(snd_whitescreen, 1, false)
    }
}
if (progress == 10)
{
    if (whiteness < 1)
        whiteness += 0.01
    if (!audio_is_playing(snd_whitescreen))
        progress = 11
}
if (progress == 11)
{
    script_execute(scr_room_change)
    progress = 11
}

