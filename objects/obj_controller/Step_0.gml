if keyboard_check_pressed(global.fullscreenkey)
{
    if window_get_fullscreen()
        window_set_fullscreen(false)
    else
        window_set_fullscreen(true)
}
if keyboard_check(global.escapekey)
{
    if (holdesc < 19)
    {
        if (room_speed == 30)
            holdesc += 1
        else if (room_speed == 60)
            holdesc += 0.5
    }
    else
        game_end()
}
if keyboard_check_released(global.escapekey)
    holdesc = 0
if (global.timergo == 1)
{
    if (global.playsecond < 1800)
        global.playsecond += 1
    else
    {
        global.playsecond = 0
        global.playminute += 1
    }
}
if (!instance_exists(obj_music_player))
    audio_stop_sound(global.musictitle)
if (global.genocideaborted == 1)
    global.genocide = 0
if (global.enemiesleft != 0)
    global.nofightsanymore = 0
if (global.enemiesleft < 0)
    global.enemiesleft = 0
if (global.sanihired == 1 || global.sniperhired == 1 || global.janehired == 1 || global.tavishhired == 1 || global.spyhired == 1 || global.scouthired == 1)
{
    if (global.genocideaborted == 0)
        global.genocideaborted = 1
    if (global.genocide == 1)
        global.genocide = 0
}
scr_hat_effects()
scr_inventory_check()

