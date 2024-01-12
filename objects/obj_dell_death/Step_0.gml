if (animprog == 0)
{
    if (extray < 1)
        extray += 0.25
    else
        animprog = 1
}
if (animprog == 1)
{
    if (extray < 1.6)
        extray += 0.05
    else
        animprog = 2
}
if (animprog == 2)
{
    if (extray < 1.8)
        extray += 0.025
    else
        animprog = 3
}
if (animprog == 3)
{
    if (extray < 1.9)
        extray += 0.01
    else
        animprog = 4
}
if (animprog == 4)
{
    if (extray > 1.8)
        extray -= 0.01
    else
        animprog = 5
}
if (animprog == 5)
{
    if (extray > 1.6)
        extray -= 0.025
    else
        animprog = 6
}
if (animprog == 6)
{
    if (extray > 1)
        extray -= 0.05
    else
        animprog = 7
}
if (animprog == 7)
{
    if (extray > 0.6)
        extray -= 0.25
    else
        animprog = 8
}
if (animprog == 8)
{
    if (extray > 0.4)
        extray -= 0.01
    else
        animprog = 9
}
if (animprog == 9)
{
    if (extray > 0.2)
        extray -= 0.025
    else
        animprog = 10
}
if (animprog == 10)
{
    if (extray > 0.1)
        extray -= 0.05
    else
        animprog = 11
}
if (animprog == 11)
{
    if (extray < 0.2)
        extray += 0.05
    else
        animprog = 12
}
if (animprog == 12)
{
    if (extray < 0.4)
        extray += 0.025
    else
        animprog = 13
}
if (animprog == 13)
{
    if (extray < 0.6)
        extray += 0.01
    else
        animprog = 0
}
if (progress == 1 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 2)
        heads = 14
    if (obj_speech_bubble_noevade.N == 3)
        heads = 12
}
if (progress == 1 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 2
    alarm[1] = 60
}
if (progress == 3 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
    {
        heads = 13
        torso = 4
    }
}
if (progress == 3 && (!instance_exists(obj_speech_bubble_noevade)))
{
    heads = 12
    torso = 5
    progress = 5
}
if (progress == 5)
{
    if (x > -40)
    {
        if (extray >= 0.2)
            x -= (extray / 2)
    }
    else
    {
        progress = 6
        alarm[3] = 30
    }
}
if (progress == 7 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 8
    alarm[4] = 60
}

