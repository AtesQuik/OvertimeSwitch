stop = 0
if (x < 320)
    path_start(path_pyroflames1, 8, path_action_stop, 0)
else
    path_start(path_pyroflames2, 8, path_action_stop, 0)
action_set_alarm(1, 0)
action_set_alarm(1, 1)

