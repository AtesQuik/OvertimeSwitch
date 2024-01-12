if (blackscreen > 0)
    blackscreen -= 0.05
if (reverse == 0)
{
    if (bg1x < 480)
        bg1x += 2
    else
        bg1x = -160
    if (bg2x < 480)
        bg2x += 2
    else
        bg2x = -160
    if (phasetwo == 1)
    {
        if (bg3y < 480)
            bg3y += 2
        else
            bg3y = -160
        if (bg3upordown == 0)
        {
            if (bg3alpha < 0.5)
                bg3alpha += 0.005
            else
                bg3upordown = 1
        }
        if (bg3upordown == 1)
        {
            if (bg3alpha > 0.25)
                bg3alpha -= 0.005
            else
                bg3upordown = 0
        }
    }
    if (bg1upordown == 0)
    {
        if (bg1alpha < 0.75)
            bg1alpha += 0.005
        else
            bg1upordown = 1
    }
    if (bg1upordown == 1)
    {
        if (bg1alpha > 0.25)
            bg1alpha -= 0.005
        else
            bg1upordown = 0
    }
    if (bg2upordown == 0)
    {
        if (bg2alpha < 0.75)
            bg2alpha += 0.005
        else
            bg2upordown = 1
    }
    if (bg2upordown == 1)
    {
        if (bg2alpha > 0.25)
            bg2alpha -= 0.005
        else
            bg2upordown = 0
    }
}
if (reverse == 1)
{
    if (progress == 0)
    {
        progress = 1
        alarm[0] = 30
    }
    if (progress == 1)
    {
        if (bg1x < 480)
            bg1x += 1
        else
            bg1x = -160
        if (bg2x < 480)
            bg2x += 1
        else
            bg2x = -160
        if (bg1upordown == 0)
        {
            if (bg1alpha < 0.75)
                bg1alpha += 0.0025
            else
                bg1upordown = 1
        }
        if (bg1upordown == 1)
        {
            if (bg1alpha > 0.25)
                bg1alpha -= 0.0025
            else
                bg1upordown = 0
        }
        if (bg2upordown == 0)
        {
            if (bg2alpha < 0.75)
                bg2alpha += 0.0025
            else
                bg2upordown = 1
        }
        if (bg2upordown == 1)
        {
            if (bg2alpha > 0.25)
                bg2alpha -= 0.0025
            else
                bg2upordown = 0
        }
        if (bg3y < 480)
            bg3y += 1
        else
            bg3y = -160
        if (bg3upordown == 0)
        {
            if (bg3alpha < 0.5)
                bg3alpha += 0.0025
            else
                bg3upordown = 1
        }
        if (bg3upordown == 1)
        {
            if (bg3alpha > 0.25)
                bg3alpha -= 0.0025
            else
                bg3upordown = 0
        }
    }
    if (progress == 2)
    {
        if (bg1x < 480)
            bg1x += 0.5
        else
            bg1x = -160
        if (bg2x < 480)
            bg2x += 0.5
        else
            bg2x = -160
        if (bg1upordown == 0)
        {
            if (bg1alpha < 0.75)
                bg1alpha += 0.00125
            else
                bg1upordown = 1
        }
        if (bg1upordown == 1)
        {
            if (bg1alpha > 0.25)
                bg1alpha -= 0.00125
            else
                bg1upordown = 0
        }
        if (bg2upordown == 0)
        {
            if (bg2alpha < 0.75)
                bg2alpha += 0.00125
            else
                bg2upordown = 1
        }
        if (bg2upordown == 1)
        {
            if (bg2alpha > 0.25)
                bg2alpha -= 0.00125
            else
                bg2upordown = 0
        }
        if (bg3y < 480)
            bg3y += 0.5
        else
            bg3y = -160
        if (bg3upordown == 0)
        {
            if (bg3alpha < 0.5)
                bg3alpha += 0.00125
            else
                bg3upordown = 1
        }
        if (bg3upordown == 1)
        {
            if (bg3alpha > 0.25)
                bg3alpha -= 0.00125
            else
                bg3upordown = 0
        }
    }
    if (progress == 4)
    {
        if (bg1x > -160)
            bg1x -= 0.5
        else
            bg1x = 480
        if (bg2x > -160)
            bg2x -= 0.5
        else
            bg2x = 480
        if (bg1upordown == 0)
        {
            if (bg1alpha > 0.25)
                bg1alpha -= 0.00125
            else
                bg1upordown = 1
        }
        if (bg1upordown == 1)
        {
            if (bg1alpha < 0.75)
                bg1alpha += 0.00125
            else
                bg1upordown = 0
        }
        if (bg2upordown == 0)
        {
            if (bg2alpha > 0.25)
                bg2alpha -= 0.00125
            else
                bg2upordown = 1
        }
        if (bg2upordown == 1)
        {
            if (bg2alpha < 0.75)
                bg2alpha += 0.00125
            else
                bg2upordown = 0
        }
        if (bg3y > -160)
            bg3y -= 0.5
        else
            bg3y = 480
        if (bg3upordown == 0)
        {
            if (bg3alpha > 0.25)
                bg3alpha -= 0.00125
            else
                bg3upordown = 1
        }
        if (bg3upordown == 1)
        {
            if (bg3alpha < 0.5)
                bg3alpha += 0.00125
            else
                bg3upordown = 0
        }
    }
    if (progress == 5)
    {
        if (bg1x > -160)
            bg1x -= 1
        else
            bg1x = 480
        if (bg2x > -160)
            bg2x -= 1
        else
            bg2x = 480
        if (bg1upordown == 0)
        {
            if (bg1alpha > 0.25)
                bg1alpha -= 0.0025
            else
                bg1upordown = 1
        }
        if (bg1upordown == 1)
        {
            if (bg1alpha < 0.75)
                bg1alpha += 0.0025
            else
                bg1upordown = 0
        }
        if (bg2upordown == 0)
        {
            if (bg2alpha > 0.25)
                bg2alpha -= 0.0025
            else
                bg2upordown = 1
        }
        if (bg2upordown == 1)
        {
            if (bg2alpha < 0.75)
                bg2alpha += 0.0025
            else
                bg2upordown = 0
        }
        if (bg3y > -160)
            bg3y -= 1
        else
            bg3y = 480
        if (bg3upordown == 0)
        {
            if (bg3alpha > 0.25)
                bg3alpha -= 0.0025
            else
                bg3upordown = 1
        }
        if (bg3upordown == 1)
        {
            if (bg3alpha < 0.5)
                bg3alpha += 0.0025
            else
                bg3upordown = 0
        }
    }
    if (progress == 6)
    {
        if (bg1x > -160)
            bg1x -= 2
        else
            bg1x = 480
        if (bg2x > -160)
            bg2x -= 2
        else
            bg2x = 480
        if (bg1upordown == 0)
        {
            if (bg1alpha > 0.25)
                bg1alpha -= 0.005
            else
                bg1upordown = 1
        }
        if (bg1upordown == 1)
        {
            if (bg1alpha < 0.75)
                bg1alpha += 0.005
            else
                bg1upordown = 0
        }
        if (bg2upordown == 0)
        {
            if (bg2alpha > 0.25)
                bg2alpha -= 0.005
            else
                bg2upordown = 1
        }
        if (bg2upordown == 1)
        {
            if (bg2alpha < 0.75)
                bg2alpha += 0.005
            else
                bg2upordown = 0
        }
        if (bg3y > -160)
            bg3y -= 2
        else
            bg3y = 480
        if (bg3upordown == 0)
        {
            if (bg3alpha > 0.25)
                bg3alpha -= 0.005
            else
                bg3upordown = 1
        }
        if (bg3upordown == 1)
        {
            if (bg3alpha < 0.5)
                bg3alpha += 0.005
            else
                bg3upordown = 0
        }
    }
}

