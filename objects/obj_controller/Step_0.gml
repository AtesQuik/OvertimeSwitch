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
if os_type = os_switch {
if (gamepad_axis_value(0, gp_axislh) > 0.6 || gamepad_button_check(0, gp_padr))
    right = 1
else
    right = 0
if (gamepad_axis_value(0, gp_axislh) < -0.6 || gamepad_button_check(0, gp_padl))
    left = 1
else
    left = 0
if (gamepad_axis_value(0, gp_axislv) > 0.6 || gamepad_button_check(0, gp_padd))
    down = 1
else
    down = 0
if (gamepad_axis_value(0, gp_axislv) < -0.6 || gamepad_button_check(0, gp_padu))
    up = 1
else
    up = 0
if gamepad_button_check_pressed(0, gp_face1)
    keyboard_key_press(vk_shift)
else
    keyboard_key_release(vk_shift)
if gamepad_button_check_pressed(0, gp_face2)
    keyboard_key_press(vk_space)
else
    keyboard_key_release(vk_space)
if gamepad_button_check_pressed(0, gp_face4)
    keyboard_key_press(vk_control)
else
    keyboard_key_release(vk_control)
if (right == 1)
    keyboard_key_press(vk_right)
else
    keyboard_key_release(vk_right)
if (left == 1)
    keyboard_key_press(vk_left)
else
    keyboard_key_release(vk_left)
if (down == 1)
    keyboard_key_press(vk_down)
else
    keyboard_key_release(vk_down)
if (up == 1)
    keyboard_key_press(vk_up)
else
    keyboard_key_release(vk_up)
}