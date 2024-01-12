with (instance_create(global.soulxposition, (global.soulyposition - 60), obj_pyro_fireball))
{
    yextra = -60
    alarm[2] = 1
}
with (instance_create((global.soulxposition + 45), (global.soulyposition - 45), obj_pyro_fireball))
{
    yextra = -45
    xextra = 45
    alarm[2] = 5
}
with (instance_create((global.soulxposition + 60), global.soulyposition, obj_pyro_fireball))
{
    xextra = 60
    alarm[2] = 10
}
with (instance_create((global.soulxposition + 45), (global.soulyposition + 45), obj_pyro_fireball))
{
    yextra = 45
    xextra = 45
    alarm[2] = 15
}
with (instance_create(global.soulxposition, (global.soulyposition + 60), obj_pyro_fireball))
{
    yextra = 60
    alarm[2] = 20
}
with (instance_create((global.soulxposition - 45), (global.soulyposition + 45), obj_pyro_fireball))
{
    yextra = 45
    xextra = -45
    alarm[2] = 25
}
with (instance_create((global.soulxposition - 60), global.soulyposition, obj_pyro_fireball))
{
    xextra = -60
    alarm[2] = 30
}
with (instance_create((global.soulxposition - 45), (global.soulyposition - 45), obj_pyro_fireball))
{
    yextra = -45
    xextra = -45
    alarm[2] = 35
}

