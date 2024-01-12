var __b__;
__b__ = action_if_variable(global.soulhit, 0, 0)
if __b__
{
    if (orangeorblue == 0)
    {
        script_execute(scr_soul_hit)
        instance_destroy()
    }
    if (orangeorblue == 1)
    {
        if (global.soulhit == 0 && global.soulmoving == 0)
        {
            script_execute(scr_soul_hit)
            instance_destroy()
        }
    }
    if (orangeorblue == 2)
    {
        if (global.soulhit == 0 && global.soulmoving == 1)
        {
            script_execute(scr_soul_hit)
            instance_destroy()
        }
    }
}
