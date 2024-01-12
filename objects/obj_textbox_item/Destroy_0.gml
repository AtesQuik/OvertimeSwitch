var __b__;
__b__ = action_if_variable(global.battlemenuoffline, 0, 0)
if __b__
    global.textboxon = 0
else
{
    instance_create(0, 0, obj_itemwave)
    instance_create(108, 0, obj_itemwave)
    instance_create(214, 0, obj_itemwave)
}

