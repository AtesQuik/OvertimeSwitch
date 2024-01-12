if (animprog == 0)
{
    if (extrax > -1)
        extrax -= 0.2
    if (extray > -1)
        extray -= 0.2
    if (extrax == -1 && extray == -1)
        animprog = 1
}
if (animprog == 1)
{
    if (extrax > -2)
        extrax -= 0.2
    if (extray < 0)
        extray += 0.2
    if (extrax == -2 && extray == 0)
        animprog = 2
}
if (animprog == 2)
{
    if (extrax < -1)
        extrax += 0.2
    if (extray < 1)
        extray += 0.2
    if (extrax == -1 && extray == 1)
        animprog = 3
}
if (animprog == 3)
{
    if (extrax < 0)
        extrax += 0.2
    if (extray > 0)
        extray -= 0.2
    if (extrax == 0 && extray == 0)
        animprog = 4
}
if (animprog == 4)
{
    if (extrax < 1)
        extrax += 0.2
    if (extray > -1)
        extray -= 0.2
    if (extrax == 1 && extray == -1)
        animprog = 5
}
if (animprog == 5)
{
    if (extrax < 2)
        extrax += 0.2
    if (extray < 0)
        extray += 0.2
    if (extrax == 2 && extray == 0)
        animprog = 6
}
if (animprog == 6)
{
    if (extrax > 1)
        extrax -= 0.2
    if (extray < 1)
        extray += 0.2
    if (extrax == 1 && extray == 1)
        animprog = 7
}
if (animprog == 7)
{
    if (extrax > 0)
        extrax -= 0.2
    if (extray > 0)
        extray -= 0.2
    if (extrax == 0 && extray == 0)
        animprog = 0
}
if instance_exists(obj_dell_wrench)
{
    if keyboard_check(vk_pageup)
    {
        with (obj_dell_wrench)
            y -= 1
    }
    if keyboard_check(vk_pagedown)
    {
        with (obj_dell_wrench)
            y += 1
    }
}
global.evadetime = 100000
with (obj_evade_ground)
    alarm[1] = -1
timer += 1
timer2 += 2
timer3 += 3

