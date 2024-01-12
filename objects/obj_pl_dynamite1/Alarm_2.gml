instance_destroy()
with (instance_create(x, y, obj_pl_boom))
    limit = 10
with (instance_create((x + 20), y, obj_pl_dynamite2))
    move_towards_point((other.x + 100), (other.y + irandom_range(-100, 100)), 8)
with (instance_create((x - 20), y, obj_pl_dynamite2))
    move_towards_point((other.x - 100), (other.y + irandom_range(-100, 100)), 8)
if (act == 0)
{
    with (instance_create(x, y, obj_pl_dynamite2))
        move_towards_point(other.x, (other.y + irandom_range(-100, 100)), 8)
}
else
{
    with (instance_create(x, y, obj_pl_act))
    {
        move_towards_point(other.x, (other.y + irandom_range(-100, 100)), 4)
        shotout = 1
    }
}

