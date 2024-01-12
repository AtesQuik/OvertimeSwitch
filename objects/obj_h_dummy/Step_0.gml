var __b__;
scr_above_or_below(-10)
__b__ = action_if_variable(global.hospitalprogress, 6, 2)
if __b__
{
    with (obj_talk_object)
        string1 = "* Are you still mad at the#  flower? Why? What did it#  ever do to you?"
}
__b__ = action_if_variable(global.hospitalprogress, 5, 2)
if __b__
{
    with (obj_talk_object)
        string1 = "* You really hate flowers,#  don't you?"
}
__b__ = action_if_variable(global.hospitalprogress, 4, 0)
if __b__
{
    with (obj_talk_object)
        string1 = "* You may hate flowers a lot,#  but you're supposed to#  attack the dummy."
}
__b__ = action_if_variable(global.hospitalprogress, 3, 0)
if __b__
{
    with (obj_talk_object)
        string1 = "* (Flower.)"
}

