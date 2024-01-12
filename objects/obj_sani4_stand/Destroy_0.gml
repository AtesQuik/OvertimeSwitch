var __b__;
action_set_relative(1)
__b__ = action_if_variable(global.hospitalprogress, 5, 0)
if __b__
    action_create_object(obj_sani5_stand, 0, 0)
action_set_relative(0)

