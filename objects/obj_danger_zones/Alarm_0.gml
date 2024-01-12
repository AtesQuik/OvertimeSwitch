alarm[0] = 15
with (instance_create(irandom_range(125, 195), irandom_range(-10, -25), obj_misha_bullet))
{
    spd = 5
    damagedone = other.damagedone
}

