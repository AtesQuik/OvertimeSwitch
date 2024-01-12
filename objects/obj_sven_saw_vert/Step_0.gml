var __b__;
action_set_relative(1)
__b__ = action_if_variable(go, 1, 0)
if __b__
{
    __b__ = action_if_variable(image_index, 0, 0)
    if __b__
        action_move_to(0, spd)
    else
        action_move_to(0, (-spd))
}
action_set_relative(0)

