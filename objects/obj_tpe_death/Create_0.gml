deathprogress = 0
whitescreen = 0
POS = 0
repaired = 0
audio_stop_all()
if instance_exists(obj_music_player)
{
    with (obj_music_player)
        instance_destroy()
}
if instance_exists(obj_enemy_attack_parent)
{
    with (obj_enemy_attack_parent)
        instance_destroy()
}
if instance_exists(obj_tpe_background)
{
    with (obj_tpe_background)
        instance_destroy()
}

