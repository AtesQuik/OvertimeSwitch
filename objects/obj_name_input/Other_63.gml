var i_d = ds_map_find_value(async_load, "id")
if (i_d == command)
{
    if ds_map_find_value(async_load, "status")
    {
        if (ds_map_find_value(async_load, "result") != "")
        {
            written = ds_map_find_value(async_load, "result")
			OS = 0
			progress = 5
			audio_play_sound(snd_battlemenu_select, 1, false)
			global.playername = written
        }
    }
}