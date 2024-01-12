audio_play_sound(snd_battlemenu_select, 1, false)
with (obj_music_player)
    instance_destroy()
progress = 4
instance_create(x, y, obj_text_box)
with (obj_text_box)
{
    MAXSTR = 0
    STR[0] = "* Ring..."
}

