if (global.bleeding == 1)
{
    if (countup < 10)
    {
        countup += 1
        if (global.playerhealth > 1)
        {
            global.playerhealth -= 1
            alarm[0] = 30
        }
        else
        {
            global.bleeding = 0
            instance_destroy()
        }
    }
    else
    {
        global.bleeding = 0
        instance_destroy()
    }
}

