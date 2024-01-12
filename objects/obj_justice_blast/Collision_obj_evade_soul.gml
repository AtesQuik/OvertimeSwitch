var __b__;
__b__ = action_if_variable(fadeout, 0, 0)
if __b__
{
    __b__ = action_if_variable(global.soulhit, 0, 0)
    if __b__
    {
        scr_soul_hit()
        scr_soul_bleeding()
    }
}
