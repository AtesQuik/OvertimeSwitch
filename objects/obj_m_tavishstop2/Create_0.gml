var __b__;
__b__ = action_if_variable(global.mineprogress, 1, 2)
if __b__
{
    if (global.mineevading == 0)
        instance_destroy()
}
progress = 0
if (global.mineevading == 1)
    instance_create(x, y, obj_m_evadecheck)

