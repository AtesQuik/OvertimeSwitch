if (progress == 0)
{
    if (y < 80)
        y += 2
    else
        progress = 1
}
if (progress == 1)
{
    progress = 2
    path_start(path_b_finale, 2, path_action_continue, 0)
}

