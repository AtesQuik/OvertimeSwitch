var __b__;
action_set_relative(0)
__b__ = action_if_variable(global.soultype, 0, 0)
if __b__
{
    action_set_alarm(2, 0)
    action_set_relative(1)
    action_create_object(obj_battle_spray, -16, -31)
    action_set_relative(0)
}
action_set_relative(0)

