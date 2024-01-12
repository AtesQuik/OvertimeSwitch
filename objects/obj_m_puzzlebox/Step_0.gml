if place_meeting(x, y, obj_m_boxswitch)
{
    if (activated == 0)
    {
        activated = 1
        if ((!sound_isplaying(snd_close1)) && (!instance_exists(obj_m_puzzledone)))
            audio_play_sound(snd_close1, 1, false)
        if instance_exists(obj_m_boxcheck1)
        {
            with (obj_m_boxcheck1)
                boxesactivated += 1
        }
        if instance_exists(obj_m_boxcheck2)
        {
            with (obj_m_boxcheck2)
                boxesactivated += 1
        }
    }
}
else if (activated == 1)
{
    activated = 0
    if instance_exists(obj_m_boxcheck1)
    {
        with (obj_m_boxcheck1)
            boxesactivated -= 1
    }
    if instance_exists(obj_m_boxcheck2)
    {
        with (obj_m_boxcheck2)
            boxesactivated -= 1
    }
}
if (amount == 0)
{
    amount = 1
    if instance_exists(obj_m_boxcheck1)
    {
        with (obj_m_boxcheck1)
            boxamount += 1
    }
    if instance_exists(obj_m_boxcheck2)
    {
        with (obj_m_boxcheck2)
            boxamount += 1
    }
}

