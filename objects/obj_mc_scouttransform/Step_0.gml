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
    if (headshake < 3)
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

