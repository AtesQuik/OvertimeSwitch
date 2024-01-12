if (progress == 1)
{
    if (shootprogress == 1)
    {
        shootprogress = 2
        shooting = 1
        alarm[5] = 15
    }
    if (shootprogress == 3)
    {
        shootprogress = 4
        shooting = 2
        alarm[6] = 15
        audio_play_sound(snd_shoot, 1, false)
    }
    if (shootprogress == 5)
    {
        progress = 2
        alarm[1] = 15
        audio_play_sound(snd_soul_hit, 1, false)
        soulalpha = 0.5
    }
}
if (progress == 3)
{
    if (gunalpha > 0)
        gunalpha -= 0.05
    else
        shooting = 0
}

