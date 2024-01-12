var __b__;
__b__ = action_if_variable(global.soulhit, 0, 0)
if __b__
{
    if (bounce == 0)
    {
        script_execute(scr_soul_hit)
        instance_destroy()
    }
}
