alarm[0] = 15
if instance_exists(obj_protagonist)
{
    global.playerxpos = obj_protagonist.x
    global.playerypos = obj_protagonist.y
    with (obj_protagonist)
        instance_destroy()
}
if instance_exists(obj_pro_stopped)
    instance_create(x, y, obj_fake_blackscreen)
spd = 15

