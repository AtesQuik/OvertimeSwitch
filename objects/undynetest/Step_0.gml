if (upordown == 0)
{
    if (shaking < 8)
        shaking += 1
    else
        upordown = 1
}
else if (shaking > -7)
    shaking -= 1
else
    upordown = 0
if (keyboard_check(vk_up) && gunangle < 20)
    gunangle += 2
if (keyboard_check(vk_down) && gunangle > -20)
    gunangle -= 2

