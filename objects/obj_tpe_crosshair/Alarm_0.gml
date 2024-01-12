alarm[0] = 30
if (bulletcount < 5)
    bulletcount += 1
else
    bulletcount = 0
if (bulletcount == 0)
{
    with (instance_create(-20, irandom_range(-20, 260), obj_tpe_battle_bullet))
    {
        damagedone = other.damagedone
        gotox = global.soulxposition
        gotoy = global.soulyposition
    }
}
if (bulletcount == 1)
{
    with (instance_create(-20, irandom_range(-20, 260), obj_tpe_battle_bullet))
    {
        damagedone = other.damagedone
        gotox = global.soulxposition
        gotoy = global.soulyposition
    }
}
if (bulletcount == 2)
{
    with (instance_create(irandom_range(-20, 340), 260, obj_tpe_battle_bullet))
    {
        damagedone = other.damagedone
        gotox = global.soulxposition
        gotoy = global.soulyposition
    }
}
if (bulletcount == 3)
{
    with (instance_create(irandom_range(-20, 340), 260, obj_tpe_battle_bullet))
    {
        damagedone = other.damagedone
        gotox = global.soulxposition
        gotoy = global.soulyposition
    }
}
if (bulletcount == 4)
{
    with (instance_create(340, irandom_range(-20, 260), obj_tpe_battle_bullet))
    {
        damagedone = other.damagedone
        gotox = global.soulxposition
        gotoy = global.soulyposition
    }
}
if (bulletcount == 5)
{
    with (instance_create(340, irandom_range(-20, 260), obj_tpe_battle_bullet))
    {
        damagedone = other.damagedone
        gotox = global.soulxposition
        gotoy = global.soulyposition
    }
}

