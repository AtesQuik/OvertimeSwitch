alarm[0] = 30
with (instance_create(bulletx, bullety, obj_tm_battle_bullet2))
    damagedone = other.damagedone
bulletcount += 1
if (startx == 96)
{
    if (bulletcount == 1)
    {
        bulletx = 72
        bullety = 224
    }
    if (bulletcount == 2)
    {
        bulletx = 240
        bullety = 224
    }
    if (bulletcount == 3)
    {
        bulletx = 240
        bullety = 64
    }
}
if (startx == 208)
{
    if (bulletcount == 1)
    {
        bulletx = 240
        bullety = 224
    }
    if (bulletcount == 2)
    {
        bulletx = 72
        bullety = 224
    }
    if (bulletcount == 3)
    {
        bulletx = 72
        bullety = 64
    }
}

