image_speed = 0.4
action_set_alarm(90, 0)
with (obj_protagonist)
    action_kill_object()
randomchoice = choose(0, 1, 2, 3, 4, 5, 6)
stuff = 0
global.textboxtop = 1
roomname = global.travelto
if (global.travelto == 60)
{
    xpos = 150
    ypos = 140
    pdirection = 1
}
if (global.travelto == 55)
{
    xpos = 150
    ypos = 100
    pdirection = 0
}

