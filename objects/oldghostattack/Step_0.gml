var __b__;
action_set_relative(1)
__b__ = action_if_variable(go, 1, 0)
if __b__
{
    if (ghostdirection == 0 && y < 193)
        y += spd
    if (ghostdirection == 1 && x < 198)
        x += spd
    if (ghostdirection == 2 && y > 127)
        y -= spd
    if (ghostdirection == 3 && x > 120)
        x -= spd
}
else
    y += 2
action_set_relative(0)

