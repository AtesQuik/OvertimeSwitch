if (progress == 1)
{
    POS -= 1
    if (POS <= 0)
    {
        if instance_exists(obj_tpe_gunsnmercs)
        {
            with (obj_tpe_gunsnmercs)
                progress = 3
        }
        progress = 2
    }
    if (POS < (string_length(endstring) + 1))
        audio_play_sound(textvoice, 1, false)
}
if (progress == 2)
{
    if (extray < 160)
    {
        image_angle -= 1
        extray += 2
        image_alpha -= 0.025
    }
    else
        instance_destroy()
}

