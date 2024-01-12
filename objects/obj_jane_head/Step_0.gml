if (enemydead == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.05
    else
    {
        enemydead = 2
        alarm[0] = 30
    }
}

