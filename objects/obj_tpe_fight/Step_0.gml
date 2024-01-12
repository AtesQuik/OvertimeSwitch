if (progress == 1)
{
    progress = 2
    activated = 1
    audio_play_sound(snd_battlemenu_move, 1, false)
    alarm[0] = 30
}
if (progress == 3)
{
    if keyboard_check_pressed(global.actionkey)
    {
        progress = 4
        with (obj_music_player)
            instance_destroy()
    }
}
if (progress == 4)
{
    if (shootprogress == 0)
    {
        shootprogress = 1
        shooting = 1
        alarm[1] = 30
    }
    if (shootprogress == 2)
    {
        shooting = 2
        audio_play_sound(snd_shoot, 1, false)
        progress = 5
    }
}
if (progress == 5)
{
    if (whitescreen < 1)
        whitescreen += 0.02
    else
    {
        progress = 6
        alarm[2] = 60
    }
}
if (progress == 6)
{
    if (blackscreen < 1)
        blackscreen += 0.025
    else
        progress = 7
}
if (progress == 7)
{
    progress = 8
    room_goto(rm_tpe_flashback)
}

