progress = 0
if (movechance == 0)
{
    moving = 1
    movechance = choose(0, 0, 1)
    alarm[2] = 60
}
else if (movechance == 1)
{
    moving = 0
    movechance = choose(0, 0, 1)
    alarm[4] = 30
}

