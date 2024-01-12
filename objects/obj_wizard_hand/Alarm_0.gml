audio_play_sound(snd_syringe, 1, false)
with (instance_create(x, y, obj_wizard_thunder))
{
    damagedone = other.damagedone
    move_towards_point((global.soulxposition - 60), 240, other.spd)
}
with (instance_create(x, y, obj_wizard_thunder))
{
    damagedone = other.damagedone
    move_towards_point(global.soulxposition, 240, other.spd)
}
with (instance_create(x, y, obj_wizard_thunder))
{
    damagedone = other.damagedone
    move_towards_point((global.soulxposition + 60), 240, other.spd)
}
alarm[2] = 60

