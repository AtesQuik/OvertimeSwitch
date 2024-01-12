CSTR = STR[N]
if (progress == 0)
{
    POS += 0.25
    if (POS >= string_length(STR[N]))
    {
        progress = 1
        alarm[0] = 180
    }
}
if (progress == 2)
{
    if (whitealpha < 1)
        whitealpha += 0.1
    else
        instance_destroy()
}

