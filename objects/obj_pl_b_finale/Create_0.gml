if (!instance_exists(obj_pl_pyro_barrier2))
    instance_create(0, 0, obj_pl_pyro_barrier2)
if (!instance_exists(obj_pl_evade_soul))
    instance_create(320, 240, obj_pl_evade_soul)
progress = 0
tv = 0
with (instance_create(320, -40, obj_pl_f_balloonicorn))
    balloonicolor = 65280
with (instance_create(320, -160, obj_pl_f_balloonicorn))
    balloonicolor = 16711935
with (instance_create(320, -280, obj_pl_f_balloonicorn))
    balloonicolor = 16776960
with (instance_create(320, -400, obj_pl_f_balloonicorn))
    balloonicolor = 65535
with (instance_create(320, -520, obj_pl_f_balloonicorn))
    balloonicolor = 8388736
with (instance_create(320, -640, obj_pl_f_balloonicorn))
    balloonicolor = 4235519
with (instance_create(320, -760, obj_pl_f_balloonicorn))
    balloonicolor = 16711680
with (instance_create(320, -880, obj_pl_f_balloonicorn))
    ballooney = 1
nomoreheals = 0
action_set_alarm(1260, 0)
action_set_alarm(1140, 1)
action_set_alarm(600, 2)
action_set_alarm(1080, 3)

