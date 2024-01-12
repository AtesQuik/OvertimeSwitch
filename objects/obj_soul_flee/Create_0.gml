spd = 1
image_speed = 0.5
global.flee = 1
text = choose(1, 2, 3, 4, 5, 6)
if (!instance_exists(obj_tavish_battle))
{
    global.justfled = 1
    global.fledroom = room
}

