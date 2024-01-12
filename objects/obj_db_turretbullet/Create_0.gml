orangeorblue = 0
damagedone = 2
spd = 12
if (x > 160)
    bulletdir = -1
else
    bulletdir = 1
if instance_exists(obj_merc1_battle)
{
    if (!audio_is_playing(snd_syringe))
        audio_play_sound(snd_syringe, 1, false)
}
else
    audio_play_sound(snd_syringe, 1, false)
action_set_alarm(30, 0)
action_set_alarm(1, 1)

