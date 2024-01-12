if (progress == 0)
{
    if (blackscreen < 1)
        blackscreen += 0.025
    else
    {
        progress = 1
        if instance_exists(obj_tpe_gunsnmercs)
        {
            with (obj_tpe_gunsnmercs)
                progress = 54
        }
    }
}
if (progress == 2)
{
    if (blackscreen > 0)
        blackscreen -= 0.05
    else
    {
        if instance_exists(obj_tpe_gunsnmercs)
        {
            with (obj_tpe_gunsnmercs)
                progress = 56
        }
        progress = 3
    }
}
if (progress == 3)
    instance_destroy()

