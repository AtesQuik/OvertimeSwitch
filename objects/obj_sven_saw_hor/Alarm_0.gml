var __b__;
action_set_alarm(75, 1)
go = 1
__b__ = action_if_variable(image_index, 0, 0)
if __b__
    action_path(2, spd, 0, 0)
else
    action_path(1, spd, 0, 0)

