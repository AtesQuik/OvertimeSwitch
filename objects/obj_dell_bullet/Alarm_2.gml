if (leftorright == 0)
{
    image_angle = point_direction(x, y, (global.soulxposition - extra), global.soulyposition)
    move_towards_point((global.soulxposition - extra), global.soulyposition, 10)
}
else if (leftorright == 1)
{
    image_angle = point_direction(x, y, (global.soulxposition + extra), global.soulyposition)
    move_towards_point((global.soulxposition + extra), global.soulyposition, 10)
}

