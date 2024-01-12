if (castmember == 5 || castmember == 6)
{
    if (upordown == 0)
    {
        if (float < 1)
            float += 0.1
        if (float >= 1 && float < 3)
            float += 0.25
        if (float >= 3 && float < 6)
            float += 0.5
        if (float >= 6 && float < 8)
            float += 0.25
        if (float >= 8 && float < 9)
            float += 0.1
        if (float == 9)
            upordown = 1
    }
    else
    {
        if (float > 8)
            float -= 0.1
        if (float > 6 && float <= 8)
            float -= 0.25
        if (float > 3 && float <= 6)
            float -= 0.5
        if (float > 1 && float <= 3)
            float -= 0.25
        if (float <= 1)
            float -= 0.1
        if (float == 0)
            upordown = 0
    }
}
if (castmember == 9 || castmember == 10 || castmember == 11)
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
if (castmember == 12)
{
    electricity = choose(0, 1, 2, 3, 4, 5)
    electroshake = (shaking - 1.5)
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
}
with (other.id)
{
    if (castmember == 13)
    {
        if (goingdown == 0)
        {
            if (waiting < 10)
                waiting += 0.25
            else
            {
                wasattop = 1
                if (shaking < 2)
                    shaking += 0.1
                if (shaking >= 2 && shaking < 6)
                    shaking += 0.2
                if (shaking >= 6 && shaking < 12)
                    shaking += 0.4
                if (shaking >= 12)
                    goingdown = 1
            }
        }
        else if (waiting > -10)
            waiting -= 0.5
        else
        {
            if (shaking > 8 && shaking <= 12)
                shaking -= 1
            if (shaking > 0 && shaking <= 8)
                shaking -= 2
            if (shaking <= 0)
                goingdown = 0
        }
        if (waiting < -4 && wasattop == 1 && goingdown == 0)
        {
            shakex = random_range(-1, 1)
            shakey = random_range(-1, 1)
        }
        else
        {
            shakex = 0
            shakey = 0
        }
    }
}

