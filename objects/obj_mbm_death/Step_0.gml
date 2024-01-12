if (progress == 1)
{
    if (whitescreen < 1)
        whitescreen += 0.01
    if (!audio_is_playing(snd_whitescreen))
        progress = 2
}
if (progress == 2)
    script_execute(scr_room_change)

