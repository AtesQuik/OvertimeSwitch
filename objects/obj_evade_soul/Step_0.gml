var __b__;
if (global.soulhit == 1)
    image_alpha = 0.5
else
    image_alpha = 1
__b__ = action_if_variable(global.soultype, 0, 0)
if __b__
{
    if (keyboard_check(global.downkey) && (!keyboard_check(global.upkey)))
    {
        if (!(place_meeting(x, (y + spd), obj_evade_ground)))
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
        if (!(place_meeting((x + spd), y, obj_evade_ground)))
        {
            x += spd
            global.soulmoving = 1
        }
        else
            global.soulmoving = 0
    }
    if keyboard_check(global.upkey)
    {
        if (!(place_meeting(x, (y - spd), obj_evade_ground)))
        {
            y -= spd
            global.soulmoving = 1
        }
        else
            global.soulmoving = 0
    }
    if keyboard_check(global.leftkey)
    {
        if (!(place_meeting((x - spd), y, obj_evade_ground)))
        {
            x -= spd
            global.soulmoving = 1
        }
        else
            global.soulmoving = 0
    }
    if ((!keyboard_check(global.downkey)) && (!keyboard_check(global.upkey)) && (!keyboard_check(global.rightkey)) && (!keyboard_check(global.leftkey)))
        global.soulmoving = 0
}
__b__ = action_if_variable(global.soultype, 1, 0)
if __b__
{
    if (keyboard_check(global.rightkey) && (!keyboard_check(global.leftkey)))
    {
        if ((!(place_meeting((x + spd), y, obj_evade_ground))) && (!(place_meeting((x + spd), y, obj_dell_platform))) && (!(place_meeting((x + spd), y, obj_dell_evade_wall))))
        {
            x += spd
            global.soulmoving = 1
        }
        else
            global.soulmoving = 0
    }
    if (keyboard_check(global.leftkey) && (!keyboard_check(global.rightkey)))
    {
        if ((!(place_meeting((x - spd), y, obj_evade_ground))) && (!(place_meeting((x - spd), y, obj_dell_platform))) && (!(place_meeting((x - spd), y, obj_dell_evade_wall))))
        {
            x -= spd
            global.soulmoving = 1
        }
        else
            global.soulmoving = 0
    }
    if ((!(place_meeting(x, (y + 1), obj_evade_ground))) && (!(place_meeting(x, (y + 1), obj_dell_platform))) && (!(place_meeting(x, (y + 1), obj_dell_evade_wall))))
    {
        grav = 0.25
        vspd += grav
    }
    else
    {
        grav = 0
        vspd = -4
    }
    if (vspd > 4)
        vspd = 4
    repeat abs(vspd)
    {
        if (sign(vspd) < 0)
        {
            if ((!(place_meeting(x, (y - 1), obj_evade_ground))) && (!(place_meeting(x, (y - 1), obj_dell_platform))) && (!(place_meeting(x, (y - 1), obj_dell_evade_wall))))
                y += sign(vspd)
            else
                vspd = 0
        }
        else if ((!(place_meeting(x, (y + 1), obj_evade_ground))) && (!(place_meeting(x, (y + 1), obj_dell_platform))) && (!(place_meeting(x, (y + 1), obj_dell_evade_wall))))
            y += sign(vspd)
    }
    if ((!keyboard_check(global.rightkey)) && (!keyboard_check(global.leftkey)))
        global.soulmoving = 0
}
__b__ = action_if_variable(global.soultype, 2, 0)
if __b__
{
    if instance_exists(obj_evade_shield)
    {
        if keyboard_check(global.downkey)
        {
            with (obj_evade_shield)
                blockdir = 0
        }
        if keyboard_check(global.rightkey)
        {
            with (obj_evade_shield)
                blockdir = 1
        }
        if keyboard_check(global.upkey)
        {
            with (obj_evade_shield)
                blockdir = 2
        }
        if keyboard_check(global.leftkey)
        {
            with (obj_evade_shield)
                blockdir = 3
        }
    }
    else
        instance_create(x, y, obj_evade_shield)
}
__b__ = action_if_variable(global.soultype, 3, 0)
if __b__
{
    if keyboard_check_pressed(global.downkey)
    {
        if (y == 140)
            y = 160
        else if (y == 160)
            y = 180
    }
    if (keyboard_check(global.rightkey) && (!keyboard_check(global.leftkey)))
    {
        if ((!(place_meeting((x + spd), y, obj_evade_ground))) && x < 187)
        {
            x += spd
            global.soulmoving = 1
        }
        else
            global.soulmoving = 0
    }
    if keyboard_check_pressed(global.upkey)
    {
        if (y == 160)
            y = 140
        else if (y == 180)
            y = 160
    }
    if keyboard_check(global.leftkey)
    {
        if ((!(place_meeting((x - spd), y, obj_evade_ground))) && x > 132)
        {
            x -= spd
            global.soulmoving = 1
        }
        else
            global.soulmoving = 0
    }
    if ((!keyboard_check(global.downkey)) && (!keyboard_check(global.upkey)) && (!keyboard_check(global.rightkey)) && (!keyboard_check(global.leftkey)))
        global.soulmoving = 0
}
__b__ = action_if_variable(global.soultype, 4, 0)
if __b__
{
    if (y < 185)
        y += 2
    else if (!instance_exists(obj_soul_ball))
        instance_create(x, (y - 10), obj_soul_ball)
    if (keyboard_check(global.rightkey) && (!keyboard_check(global.leftkey)))
    {
        if (!(place_meeting((x + spd), y, obj_evade_ground)))
        {
            x += spd
            global.soulmoving = 1
        }
        else
            global.soulmoving = 0
    }
    if keyboard_check(global.leftkey)
    {
        if (!(place_meeting((x - spd), y, obj_evade_ground)))
        {
            x -= spd
            global.soulmoving = 1
        }
        else
            global.soulmoving = 0
    }
    if ((!keyboard_check(global.rightkey)) && (!keyboard_check(global.leftkey)))
        global.soulmoving = 0
}
__b__ = action_if_variable(global.soultype, 5, 0)
if __b__
{
    vspd = 8
    if (throwdirection == 1)
    {
        if (keyboard_check(global.rightkey) && (!keyboard_check(global.leftkey)))
        {
            if (!(place_meeting((x + spd), y, obj_evade_ground)))
            {
                x += spd
                global.soulmoving = 1
            }
            else
                global.soulmoving = 0
        }
        if (keyboard_check(global.leftkey) && (!keyboard_check(global.rightkey)))
        {
            if (!(place_meeting((x - spd), y, obj_evade_ground)))
            {
                x -= spd
                global.soulmoving = 1
            }
            else
                global.soulmoving = 0
        }
        repeat abs(vspd)
        {
            if (sign(vspd) > 0)
            {
                if (!(place_meeting(x, (y + 1), obj_evade_ground)))
                {
                    y += sign(vspd)
                    break
                }
                else if (global.soultype != 0)
                {
                    global.soultype = 0
                    audio_play_sound(snd_close2, 1, false)
                    audio_play_sound(snd_soul_hit, 1, false)
                    if (global.playerhealth > 1)
                    {
                        global.playerhealth -= 1
                        break
                    }
                    else
                        global.playerhealth = 1
                }
            }
        }
    }
    if (throwdirection == 2)
    {
        if (keyboard_check(global.upkey) && (!keyboard_check(global.downkey)))
        {
            if (!(place_meeting(x, (y - spd), obj_evade_ground)))
            {
                y -= spd
                global.soulmoving = 1
            }
            else
                global.soulmoving = 0
        }
        if (keyboard_check(global.downkey) && (!keyboard_check(global.upkey)))
        {
            if (!(place_meeting(x, (y + spd), obj_evade_ground)))
            {
                y += spd
                global.soulmoving = 1
            }
            else
                global.soulmoving = 0
        }
        repeat abs(vspd)
        {
            if (sign(vspd) > 0)
            {
                if (!(place_meeting((x + 1), y, obj_evade_ground)))
                {
                    x += sign(vspd)
                    break
                }
                else if (global.soultype != 0)
                {
                    global.soultype = 0
                    audio_play_sound(snd_close2, 1, false)
                    audio_play_sound(snd_soul_hit, 1, false)
                    if (global.playerhealth > 1)
                    {
                        global.playerhealth -= 1
                        break
                    }
                    else
                        global.playerhealth = 1
                }
            }
        }
    }
    if (throwdirection == 3)
    {
        if (keyboard_check(global.rightkey) && (!keyboard_check(global.leftkey)))
        {
            if (!(place_meeting((x + spd), y, obj_evade_ground)))
            {
                x += spd
                global.soulmoving = 1
            }
            else
                global.soulmoving = 0
        }
        if (keyboard_check(global.leftkey) && (!keyboard_check(global.rightkey)))
        {
            if (!(place_meeting((x - spd), y, obj_evade_ground)))
            {
                x -= spd
                global.soulmoving = 1
            }
            else
                global.soulmoving = 0
        }
        repeat abs(vspd)
        {
            if (sign(vspd) > 0)
            {
                if (!(place_meeting(x, (y - 1), obj_evade_ground)))
                {
                    y -= sign(vspd)
                    break
                }
                else if (global.soultype != 0)
                {
                    global.soultype = 0
                    audio_play_sound(snd_close2, 1, false)
                    audio_play_sound(snd_soul_hit, 1, false)
                    if (global.playerhealth > 1)
                    {
                        global.playerhealth -= 1
                        break
                    }
                    else
                        global.playerhealth = 1
                }
            }
        }
    }
    if (throwdirection == 4)
    {
        if (keyboard_check(global.upkey) && (!keyboard_check(global.downkey)))
        {
            if (!(place_meeting(x, (y - spd), obj_evade_ground)))
            {
                y -= spd
                global.soulmoving = 1
            }
            else
                global.soulmoving = 0
        }
        if (keyboard_check(global.downkey) && (!keyboard_check(global.upkey)))
        {
            if (!(place_meeting(x, (y + spd), obj_evade_ground)))
            {
                y += spd
                global.soulmoving = 1
            }
            else
                global.soulmoving = 0
        }
        repeat abs(vspd)
        {
            if (sign(vspd) > 0)
            {
                if (!(place_meeting((x - 1), y, obj_evade_ground)))
                {
                    x -= sign(vspd)
                    break
                }
                else if (global.soultype != 0)
                {
                    global.soultype = 0
                    audio_play_sound(snd_close2, 1, false)
                    audio_play_sound(snd_soul_hit, 1, false)
                    if (global.playerhealth > 1)
                    {
                        global.playerhealth -= 1
                        break
                    }
                    else
                        global.playerhealth = 1
                }
            }
        }
    }
    if ((!keyboard_check(global.rightkey)) && (!keyboard_check(global.leftkey)) && (!keyboard_check(global.upkey)) && (!keyboard_check(global.downkey)))
        global.soulmoving = 0
}

