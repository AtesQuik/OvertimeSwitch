if (reverse == 0)
{
    if (x >= 245)
    {
        if (image_alpha > 0)
            image_alpha -= 0.05
    }
    else if (x >= 0)
    {
        if (image_alpha < 1)
            image_alpha += 0.05
    }
}
if (merc == 0)
{
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
}
if (merc == 1)
{
    if (shakey == 0 && shakex < 1)
        shakex += 0.25
    if (shakex == 1 && shakey < 1)
        shakey += 0.25
    if (shakey == 1 && shakex > 0)
        shakex -= 0.25
    if (shakex == 0 && shakey > 0)
        shakey -= 0.25
    if (headchange == 0)
    {
        if (headshake < 4)
            headshake += 0.2
        else
            headchange = 1
    }
    if (headchange == 1)
    {
        if (headshake > 0)
            headshake -= 0.2
        else
            headchange = 0
    }
}
if (merc == 2)
{
    if (upordown == 0)
    {
        if (shaking < 6)
            shaking += 1
        else
            upordown = 1
    }
    else if (shaking > -6)
        shaking -= 1
    else
        upordown = 0
    if (leftorright == 0)
    {
        if (armsangle < 1)
            armsangle += 0.25
        if (armsangle >= 1 && armsangle < 3)
            armsangle += 0.5
        if (armsangle >= 3 && armsangle < 6)
            armsangle += 1
        if (armsangle >= 6 && armsangle < 8)
            armsangle += 0.5
        if (armsangle >= 8 && armsangle < 9)
            armsangle += 0.25
        if (armsangle == 9)
            leftorright = 1
    }
    else
    {
        if (armsangle > 8)
            armsangle -= 0.25
        if (armsangle > 6 && armsangle <= 8)
            armsangle -= 0.5
        if (armsangle > 3 && armsangle <= 6)
            armsangle -= 1
        if (armsangle > 1 && armsangle <= 3)
            armsangle -= 0.5
        if (armsangle <= 1)
            armsangle -= 0.25
        if (armsangle == 0)
            leftorright = 0
    }
}
if (merc == 3)
{
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
}
if (merc == 5)
{
    if (upordown == 0)
    {
        if (armsy < 5)
            armsy += 0.5
        else
            upordown = 1
    }
    else if (upordown == 1)
    {
        if (armsy > 0)
            armsy -= 0.5
        else
            upordown = 0
    }
}

