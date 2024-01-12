if keyboard_check(vk_right)
    shaking += 1
if keyboard_check(vk_left)
    shaking -= 1
if keyboard_check(vk_up)
    shaking += 1
if keyboard_check(vk_down)
    shaking -= 1
if (shakechange == 0)
{
    if (shaking < 0.5)
        shaking += 0.1
    if (shaking >= 0.5 && shaking < 1.5)
        shaking += 0.25
    if (shaking >= 1.5 && shaking < 3)
        shaking += 0.5
    if (shaking >= 3 && shaking < 4)
        shaking += 0.25
    if (shaking >= 4 && shaking < 4.5)
        shaking += 0.1
    if (shaking == 4.5)
        shakechange = 1
}
else
{
    if (shaking > 4)
        shaking -= 0.1
    if (shaking > 3 && shaking <= 4)
        shaking -= 0.25
    if (shaking > 1.5 && shaking <= 3)
        shaking -= 0.5
    if (shaking > 0.5 && shaking <= 1.5)
        shaking -= 0.25
    if (shaking <= 0.5)
        shaking -= 0.1
    if (shaking == 0)
        shakechange = 0
}

