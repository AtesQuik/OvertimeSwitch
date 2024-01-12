var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 9, 2)
if __b__
    action_kill_object()
else if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    script_execute(scr_random_encounter)
}

