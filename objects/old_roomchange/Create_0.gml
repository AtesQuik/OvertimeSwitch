if (obj_protagonist.x > (room_width / 2))
{
    room_goto(global.roomright)
    global.playerxpos = 32
    global.playerypos = obj_protagonist.y
}
if (obj_protagonist.x < (room_width / 2))
{
    room_goto(global.roomleft)
    global.playerxpos = (room_width - 32)
    global.playerypos = obj_protagonist.y
}
if (obj_protagonist.y < (room_height / 2))
{
    room_goto(global.roomup)
    global.playerypos = (room_height - 32)
    global.playerxpos = obj_protagonist.x
}
if (obj_protagonist.y > (room_height / 2))
{
    room_goto(global.roomdown)
    global.playerypos = 32
    global.playerxpos = obj_protagonist.x
}

