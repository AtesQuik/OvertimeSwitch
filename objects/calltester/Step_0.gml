if (buttonpressed == 0)
{
    if keyboard_check_pressed(ord("1"))
    {
        global.tavishkilled = 1
        buttonpressed = 1
    }
    if keyboard_check_pressed(ord("2"))
    {
        global.janekilled = 1
        buttonpressed = 1
    }
    if keyboard_check_pressed(ord("3"))
    {
        global.scoutkilled = 1
        buttonpressed = 1
    }
    if keyboard_check_pressed(ord("4"))
    {
        global.tavishhired = 1
        buttonpressed = 1
    }
    if keyboard_check_pressed(ord("5"))
    {
        global.sanikilled = 1
        buttonpressed = 1
    }
    if keyboard_check_pressed(ord("6"))
    {
        global.sniperkilled = 1
        buttonpressed = 1
    }
    if keyboard_check_pressed(ord("7"))
    {
        global.spykilled = 1
        buttonpressed = 1
    }
}
if (buttonpressed == 1)
{
    if keyboard_check_released(vk_anykey)
        buttonpressed = 2
}
if (buttonpressed == 2)
{
    if keyboard_check_pressed(ord("1"))
    {
        global.tavishkilled = 0
        buttonpressed = 3
    }
    if keyboard_check_pressed(ord("2"))
    {
        global.janekilled = 0
        buttonpressed = 3
    }
    if keyboard_check_pressed(ord("3"))
    {
        global.scoutkilled = 0
        buttonpressed = 3
    }
    if keyboard_check_pressed(ord("4"))
    {
        global.tavishhired = 0
        buttonpressed = 3
    }
    if keyboard_check_pressed(ord("5"))
    {
        global.sanikilled = 0
        buttonpressed = 3
    }
    if keyboard_check_pressed(ord("6"))
    {
        global.sniperkilled = 0
        buttonpressed = 3
    }
    if keyboard_check_pressed(ord("7"))
    {
        global.spykilled = 0
        buttonpressed = 3
    }
}
if (buttonpressed == 3)
{
    if keyboard_check_released(vk_anykey)
        buttonpressed = 0
}

