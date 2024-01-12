var __b__;
__b__ = action_if_variable(noboxtoevade, 0, 0)
if __b__
{
    action_create_object(obj_evade_to_box, 0, 0)
    global.attacksarego = 0
    with (obj_evade_soul)
        action_kill_object()
    with (obj_enemy_attack_parent)
        action_kill_object()
}

