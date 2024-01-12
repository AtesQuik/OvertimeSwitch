if instance_exists(obj_misha_battle)
{
    if (forwardorback == 0)
    {
        if (extend < 2)
            extend += 0.25
        if (extend >= 2 && extend < 6)
            extend += 0.5
        if (extend >= 6 && extend < 12)
            extend += 1
        if (extend >= 12 && extend < 16)
            extend += 0.5
        if (extend >= 16 && extend < 18)
            extend += 0.25
        if (extend == 18)
            forwardorback = 1
    }
    else
    {
        if (extend > 16)
            extend -= 0.25
        if (extend > 12 && extend <= 16)
            extend -= 0.5
        if (extend > 6 && extend <= 12)
            extend -= 1
        if (extend > 2 && extend <= 6)
            extend -= 0.5
        if (extend <= 2)
            extend -= 0.25
        if (extend == 0)
            forwardorback = 0
    }
}

