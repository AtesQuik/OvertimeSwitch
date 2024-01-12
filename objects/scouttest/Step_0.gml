if (shakey == 0 && shakex < 1)
    shakex += 0.2
if (shakex == 1 && shakey < 1)
    shakey += 0.2
if (shakey == 1 && shakex > 0)
    shakex -= 0.2
if (shakex == 0 && shakey > 0)
    shakey -= 0.2
if (headchange == 0)
{
    if (headshake < 4)
        headshake += 0.25
    else
        headchange = 1
}
if (headchange == 1)
{
    if (headshake > 0)
        headshake -= 0.25
    else
        headchange = 0
}
if (whichleg == 1)
{
    if (legchange == 0)
    {
        if (leg1angle < 5)
            leg1angle += 0.5
        else
            legchange = 1
    }
    if (legchange == 1)
    {
        if (leg1angle > -5)
            leg1angle -= 0.5
        else
            legchange = 0
    }
}
if (whichleg == 2)
{
    if (legchange == 0)
    {
        if (leg2angle < 5)
            leg2angle += 0.5
        else
            legchange = 1
    }
    if (legchange == 1)
    {
        if (leg2angle > -5)
            leg2angle -= 0.5
        else
            legchange = 0
    }
}
global.soultype = 4

