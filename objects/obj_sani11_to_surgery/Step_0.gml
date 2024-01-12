var __b__;
__b__ = action_if_variable(global.saniblocked, 0, 0)
if __b__
    action_kill_object()
else if (y < 180)
{
    sprite_index = spr_sani_down
    image_speed = 0.25
    y += 4
}
else
{
    sprite_index = spr_sani_left
    image_speed = 0.25
    x -= 4
}

