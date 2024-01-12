audio_play_sound(snd_syringe, 1, false)
with (instance_create(x, y, obj_wizard_thunder))
{
    damagedone = other.damagedone
    move_towards_point((global.soulxposition - 80), 240, other.spd)
}
with (instance_create(x, y, obj_wizard_thunder))
{
    damagedone = other.damagedone
    move_towards_point((global.soulxposition - 25), 240, other.spd)
}
with (instance_create(x, y, obj_wizard_thunder))
{
    damagedone = other.damagedone
    move_towards_point((global.soulxposition + 25), 240, other.spd)
}
with (instance_create(x, y, obj_wizard_thunder))
{
    damagedone = other.damagedone
    move_towards_point((global.soulxposition + 80), 240, other.spd)
}
alarm[3] = 30

