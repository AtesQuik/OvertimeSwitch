var __b__;
__b__ = action_if_variable(saveprogress, 0, 0)
if __b__
{
    if (keyboard_check_pressed(global.actionkey) && ((global.genocide == 0 && POS >= string_length(STR[N])) || global.genocide == 1))
    {
        if (N == MAXSTR)
        {
            saveprogress = 1
            instance_create(x, y, obj_wait_for_me)
        }
        else if (POS >= string_length(STR[N]))
        {
            if (N < MAXSTR)
            {
                POS = 0
                N += 1
            }
        }
    }
    if keyboard_check_pressed(global.cancelkey)
        POS = (string_length(CSTR) + 1)
    else
    {
        POS += 1
        if (POS < (string_length(CSTR) + 1))
        {
            if (global.genocide == 0)
                audio_play_sound(textvoice, 1, false)
        }
    }
    CSTR = STR[N]
}
__b__ = action_if_variable(saveprogress, 1, 0)
if __b__
{
    if keyboard_check_pressed(global.rightkey)
    {
        audio_play_sound(snd_battlemenu_move, 1, false)
        if (xposition < 1)
            xposition += 1
        else
            xposition = 0
    }
    if keyboard_check_pressed(global.leftkey)
    {
        audio_play_sound(snd_battlemenu_move, 1, false)
        if (xposition > 0)
            xposition -= 1
        else
            xposition = 1
    }
    if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
    {
        if (xposition == 0)
        {
            issaving = 1
            audio_play_sound(snd_saving, 1, false)
            saveprogress = 2
            global.savedminute = global.playminute
            global.savedsecond = global.playsecond
            global.savedroom = global.roomname
            global.savedplayer = global.playername
            global.savedlevel = global.playerlevel
        }
        else
        {
            audio_play_sound(snd_battlemenu_select, 1, false)
            instance_destroy()
        }
        instance_create(x, y, obj_wait_for_me)
    }
    if keyboard_check_pressed(global.cancelkey)
    {
        audio_play_sound(snd_battlemenu_select, 1, false)
        instance_destroy()
    }
}
__b__ = action_if_variable(saveprogress, 2, 0)
if __b__
{
    if (progress == 0)
    {
        if ((keyboard_check_pressed(global.actionkey) || keyboard_check_pressed(global.cancelkey)) && (!instance_exists(obj_wait_for_me)))
        {
            progress = 1
            global.playerhealth = global.fullhealth
            instance_destroy()
        }
    }
}

