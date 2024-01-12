var __b__;
action_set_relative(0)
__b__ = action_if_variable(global.ingredientsreleased, 60, 1)
if __b__
{
    action_set_alarm(random_range(20, 40), 0)
    if (itemtype == 0)
    {
        with (instance_create(x, y, obj_db_bundog))
            type = 0
    }
    if (itemtype == 1)
    {
        with (instance_create(x, y, obj_db_bundog))
            type = 1
    }
    if (itemtype == 2)
    {
        with (instance_create((x - 39), y, obj_db_condiment))
            saucetype = 0
    }
    if (itemtype == 3)
    {
        with (instance_create((x - 39), y, obj_db_condiment))
            saucetype = 1
    }
    action_set_relative(1)
    global.ingredientsreleased += 1
    action_set_relative(0)
}
action_set_relative(0)

