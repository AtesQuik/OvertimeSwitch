if (fadeout == 0)
{
    if (transparence < 1)
        transparence += 0.05
}
if (fadeout == 1)
{
    if (transparence > 0)
        transparence -= 0.05
    else if (transparence <= 0)
    {
        if (finalfade == 0)
        {
            finalfade = 1
            alarm[2] = 30
        }
    }
}
if (waitfortextbox == 1)
{
    if (!instance_exists(obj_textbox_death))
    {
        waitfortextbox = 0
        alarm[1] = 30
    }
}

