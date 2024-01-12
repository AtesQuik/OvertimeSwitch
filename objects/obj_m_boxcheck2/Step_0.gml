if (global.puzzle2done == 0)
{
    if (boxesactivated == boxamount)
    {
        instance_create(0, 0, obj_m_puzzledone)
        if (global.genocide == 0)
            audio_play_sound(snd_win, 1, false)
        else
            audio_play_sound(snd_win2, 1, false)
        global.puzzle2done = 1
    }
}

