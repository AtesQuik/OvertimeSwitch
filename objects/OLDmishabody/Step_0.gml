if (upordown == 0)
{
    if (shaking < 1)
        shaking += 0.1
    if (shaking >= 1 && shaking < 3)
        shaking += 0.25
    if (shaking >= 3 && shaking < 6)
        shaking += 0.5
    if (shaking >= 6 && shaking < 8)
        shaking += 0.25
    if (shaking >= 8 && shaking < 9)
        shaking += 0.1
    if (shaking == 9)
        upordown = 1
}
else
{
    if (shaking > 8)
        shaking -= 0.1
    if (shaking > 6 && shaking <= 8)
        shaking -= 0.25
    if (shaking > 3 && shaking <= 6)
        shaking -= 0.5
    if (shaking > 1 && shaking <= 3)
        shaking -= 0.25
    if (shaking <= 1)
        shaking -= 0.1
    if (shaking == 0)
        upordown = 0
}
if (forwardorback == 0)
{
    if (extend4 < 16)
        extend4 += 1
    else if (extend3 < 8)
        extend3 += 0.4
    else if (extend2 < 4)
        extend2 += 0.2
    else if (extend1 < 2)
        extend1 += 0.1
    else
        forwardorback = 1
}
else if (extend1 > 0)
    extend1 -= -0.1
else if (extend2 > 0)
    extend2 -= -0.2
else if (extend3 > 0)
    extend3 -= 0.4
else if (extend4 > 0)
    extend4 -= 1
else
    forwardorback = 0
if keyboard_check(vk_left)
    bluex -= 1
if keyboard_check(vk_right)
    bluex += 1
if keyboard_check(vk_down)
    bluey -= 1
if keyboard_check(vk_up)
    bluey += 1
if keyboard_check(vk_f1)
    bluexscale = -1
else
    bluexscale = 1
if keyboard_check(vk_f2)
    blueyscale = -1
else
    blueyscale = 1

