if (rainbow == 1)
{
    if (upordown == 0)
    {
        if (shaking > -4)
            shaking -= 0.25
        else
            upordown = 1
    }
    if (upordown == 1)
    {
        if (shaking < 4)
            shaking += 0.25
        else
            upordown = 0
    }
    if (rbprogress == 0)
    {
        if (rb1alpha < 0.5)
            rb1alpha += 0.025
        if (rb1scale < 1.5)
            rb1scale += 0.05
        else
            rbprogress = 1
    }
    if (rbprogress == 1)
    {
        if (rb1scale < 2)
            rb1scale += 0.05
        if (rb1alpha > 0)
            rb1alpha -= 0.025
        if (rb2alpha < 0.5)
            rb2alpha += 0.025
        if (rb2scale < 1.5)
            rb2scale += 0.05
        else
        {
            rbprogress = 2
            rb1scale = 1
            rb3color = 65535
        }
    }
    if (rbprogress == 2)
    {
        if (rb2scale < 2)
            rb2scale += 0.05
        if (rb2alpha > 0)
            rb2alpha -= 0.025
        if (rb3alpha < 0.5)
            rb3alpha += 0.025
        if (rb3scale < 1.5)
            rb3scale += 0.05
        else
        {
            rbprogress = 3
            rb2scale = 1
            rb1color = 32768
        }
    }
    if (rbprogress == 3)
    {
        if (rb3scale < 2)
            rb3scale += 0.05
        if (rb3alpha > 0)
            rb3alpha -= 0.025
        if (rb1alpha < 0.5)
            rb1alpha += 0.025
        if (rb1scale < 1.5)
            rb1scale += 0.05
        else
        {
            rbprogress = 4
            rb3scale = 1
            rb2color = 16711680
        }
    }
    if (rbprogress == 4)
    {
        if (rb1scale < 2)
            rb1scale += 0.05
        if (rb1alpha > 0)
            rb1alpha -= 0.025
        if (rb2alpha < 0.5)
            rb2alpha += 0.025
        if (rb2scale < 1.5)
            rb2scale += 0.05
        else
        {
            rbprogress = 5
            rb1scale = 1
            rb3color = 8388736
        }
    }
    if (rbprogress == 5)
    {
        if (rb2scale < 2)
            rb2scale += 0.05
        if (rb2alpha > 0)
            rb2alpha -= 0.025
        if (rb3alpha < 0.5)
            rb3alpha += 0.025
        if (rb3scale < 1.5)
            rb3scale += 0.05
        else
        {
            rbprogress = 6
            rb2scale = 1
            rb1color = 255
        }
    }
    if (rbprogress == 6)
    {
        if (rb3scale < 2)
            rb3scale += 0.05
        if (rb3alpha > 0)
            rb3alpha -= 0.025
        if (rb1alpha < 0.5)
            rb1alpha += 0.025
        if (rb1scale < 1.5)
            rb1scale += 0.05
        else
        {
            rbprogress = 1
            rb3scale = 1
            rb2color = 4235519
        }
    }
}
if (rainbow == 2)
{
    if (rb1alpha > 0)
        rb1alpha -= 0.025
    if (rb2alpha > 0)
        rb2alpha -= 0.025
    if (rb3alpha > 0)
        rb3alpha -= 0.025
}

