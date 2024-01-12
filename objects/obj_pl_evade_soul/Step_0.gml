if (soulhit == 1)
    image_alpha = 0.5
else
    image_alpha = 1
if (invulnerable == 1)
{
    image_speed = 0.2
    sprite_index = spr_soul_invulnerable
}
if (global.playerhealth <= 0)
{
    with (instance_create((global.soulxposition / 2), (global.soulyposition / 2), obj_battle_death))
        pyrodeath = 1
    room_goto(rm_gameover)
}
global.soulxposition = x
global.soulyposition = y
if (keyboard_check(global.downkey) && (!keyboard_check(global.upkey)))
{
    if (!(place_meeting(x, (y + spd), obj_fake_evade_ground)))
    {
        y += spd
        global.soulmoving = 1
    }
    else
        global.soulmoving = 0
}
else
    global.soulmoving = 0
if (keyboard_check(global.rightkey) && (!keyboard_check(global.leftkey)))
{
    if (!(place_meeting((x + spd), y, obj_fake_evade_ground)))
    {
        x += spd
        global.soulmoving = 1
    }
    else
        global.soulmoving = 0
}
if keyboard_check(global.upkey)
{
    if (!(place_meeting(x, (y - spd), obj_fake_evade_ground)))
    {
        y -= spd
        global.soulmoving = 1
    }
    else
        global.soulmoving = 0
}
if keyboard_check(global.leftkey)
{
    if (!(place_meeting((x - spd), y, obj_fake_evade_ground)))
    {
        x -= spd
        global.soulmoving = 1
    }
    else
        global.soulmoving = 0
}
if ((!keyboard_check(global.downkey)) && (!keyboard_check(global.upkey)) && (!keyboard_check(global.rightkey)) && (!keyboard_check(global.leftkey)))
    global.soulmoving = 0

