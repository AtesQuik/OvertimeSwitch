audio_play_sound(snd_mishapunch, 1, false)
progress = 1
with (instance_create(x, y, obj_misha_punch2))
{
    damagedone = other.damagedone
    flash = other.flash
}

