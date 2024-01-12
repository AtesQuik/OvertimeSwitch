if (leg1updown == 0)
{
    if (leg1y < 5)
        leg1y += 0.25
    else
        leg1updown = 1
}
if (leg1updown == 1)
{
    if (leg1y > 0)
        leg1y -= 0.25
    else
        leg1updown = 0
}
if (animprog == 0)
{
    if (counter < 90)
        counter += 1
    else
    {
        animprog = 1
        counter = 0
    }
    headshakex = random_range(-0.5, 0.5)
    headshakey = random_range(-0.5, 0.5)
}
if (animprog == 1)
{
    headshakex = 0
    headshakey = 0
    animprog = 2
}
if (animprog == 2)
{
    if (extrahead < 24)
        extrahead += 0.5
    else
        animprog = 3
}
if (animprog == 3)
{
    if (counter < 30)
        counter += 1
    else
    {
        animprog = 4
        counter = 0
    }
}
if (animprog == 4)
{
    if (eyeprogress < 4)
        eyeprogress += 0.5
    else
    {
        eyeprogress = 4
        animprog = 5
    }
}
if (animprog == 5)
{
    if (counter < 20)
        counter += 1
    else
    {
        animprog = 6
        counter = 0
    }
}
if (animprog == 6)
{
    if (eyeprogress > 0)
        eyeprogress -= 1
    else
    {
        eyeprogress = 0
        animprog = 7
    }
}
if (animprog == 7)
{
    if (eyeprogress < 4)
        eyeprogress += 1
    else
    {
        eyeprogress = 4
        animprog = 8
    }
}
if (animprog == 8)
{
    if (counter < 10)
        counter += 1
    else
    {
        animprog = 9
        counter = 0
    }
}
if (animprog == 9)
{
    if (eyeprogress > 0)
        eyeprogress -= 1
    else
    {
        eyeprogress = 0
        animprog = 10
    }
}
if (animprog == 10)
{
    if (eyeprogress < 4)
        eyeprogress += 1
    else
    {
        eyeprogress = 4
        animprog = 11
    }
}
if (animprog == 11)
{
    if (counter < 20)
        counter += 1
    else
    {
        animprog = 12
        counter = 0
    }
}
if (animprog == 12)
{
    if (eyeprogress > 0)
        eyeprogress -= 0.5
    else
    {
        eyeprogress = 0
        animprog = 13
    }
}
if (animprog == 13)
{
    if (extrahead > 0)
        extrahead -= 0.5
    else
        animprog = 0
}
if (leftorright == 0)
{
    if (tailangle < 2)
        tailangle += 0.2
    if (tailangle >= 2 && tailangle < 6)
        tailangle += 0.5
    if (tailangle >= 6 && tailangle < 12)
        tailangle += 1
    if (tailangle >= 12 && tailangle < 16)
        tailangle += 0.5
    if (tailangle >= 16 && tailangle < 18)
        tailangle += 0.2
    if (tailangle == 18)
        leftorright = 1
}
else
{
    if (tailangle > 16)
        tailangle -= 0.2
    if (tailangle > 12 && tailangle <= 16)
        tailangle -= 0.5
    if (tailangle > 6 && tailangle <= 12)
        tailangle -= 1
    if (tailangle > 2 && tailangle <= 6)
        tailangle -= 0.5
    if (tailangle <= 2)
        tailangle -= 0.2
    if (tailangle == 0)
        leftorright = 0
}

