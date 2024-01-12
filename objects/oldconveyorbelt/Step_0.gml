x = obj_protagonist.x
y = obj_protagonist.y
if place_meeting(obj_protagonist.x, obj_protagonist.y, obj_conveyor_belt)
{
    if (movedir == 0)
    {
        if (!(place_meeting(obj_protagonist.x, ((obj_protagonist.y + spd) + 3), obj_solid)))
            obj_protagonist.y += spd
    }
    if (movedir == 1)
    {
        if (!(place_meeting(((obj_protagonist.x + spd) + 3), obj_protagonist.y, obj_solid)))
            obj_protagonist.x += spd
    }
    if (movedir == 2)
    {
        if (!(place_meeting(obj_protagonist.x, ((obj_protagonist.y - spd) - 3), obj_solid)))
            obj_protagonist.y -= spd
    }
    if (movedir == 3)
    {
        if (!(place_meeting(((obj_protagonist.x - spd) - 3), obj_protagonist.y, obj_solid)))
            obj_protagonist.x -= spd
    }
}
else
    instance_destroy()

