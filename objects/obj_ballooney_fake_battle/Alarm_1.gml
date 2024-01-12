var __b__;
action_set_relative(1)
__b__ = action_if_variable(progress, 6, 1)
if __b__
{
    action_create_object(obj_h_beer_bottle_fly, 0, 0)
    action_set_relative(0)
    action_set_alarm(15, 1)
    action_set_relative(1)
}
action_set_relative(0)

