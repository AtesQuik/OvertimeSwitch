if (difficulty == 0)
{
    alarm[0] = irandom_range(15, 30)
    spd = 2
    movedirection = choose(0, 1)
}
if (difficulty == 1)
{
    alarm[0] = irandom_range(10, 20)
    spd = 3
    movedirection = choose(0, 1)
}
if (difficulty == 2)
{
    alarm[0] = irandom_range(5, 15)
    spd = 4
    movedirection = choose(0, 1)
}
y += 2
with (instance_create(x, y, obj_tiny_block))
{
    damagedone = other.damagedone
    spd = 2
}

