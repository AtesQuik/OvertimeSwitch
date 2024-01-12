image_index = 1
alarm[1] = 5
with (instance_create(x, y, obj_justice_blast))
{
    damagedone = other.damagedone
    image_angle = other.image_angle
    image_yscale = other.image_yscale
    playsound = other.playsound
}

