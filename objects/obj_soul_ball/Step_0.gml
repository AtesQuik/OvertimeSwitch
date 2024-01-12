if ((!instance_exists(obj_evade_soul)) && (!instance_exists(obj_fake_evade_soul)) && (!instance_exists(obj_tpe_evade_soul)))
    instance_destroy()
else
{
    if (intheair == 0)
        image_speed = 0
    else
        image_speed = 0.2
    if (intheair == 0)
    {
        if instance_exists(obj_evade_soul)
        {
            x = obj_evade_soul.x
            y = (obj_evade_soul.y - 10)
        }
        if instance_exists(obj_fake_evade_soul)
        {
            x = obj_fake_evade_soul.x
            y = (obj_fake_evade_soul.y - 10)
        }
        if instance_exists(obj_tpe_evade_soul)
        {
            x = obj_tpe_evade_soul.x
            y = (obj_tpe_evade_soul.y - 10)
        }
    }
    if (keyboard_check_pressed(global.actionkey) && intheair == 0 && (!instance_exists(obj_speech_bubble)) && (!instance_exists(obj_speech_bubble_noevade)))
    {
        intheair = 1
        vspd = -6
    }
    if (y > 270)
        instance_destroy()
    if (intheair == 1)
    {
        if ((!(place_meeting(x, (y + 1), obj_fake_evade_soul))) && (!(place_meeting(x, (y + 1), obj_tpe_evade_soul))) && (!(place_meeting(x, (y + 1), obj_evade_soul))))
        {
            grav = 0.5
            vspd += grav
        }
        else
        {
            grav = 0
            intheair = 0
        }
        if (vspd > 8)
            vspd = 8
        repeat abs(vspd)
        {
            if (sign(vspd) < 0)
            {
                if (!(place_meeting(x, (y - 1), obj_enemy_attack_parent)))
                    y += sign(vspd)
                else
                    vspd = 0
            }
            else if ((!(place_meeting(x, (y + 1), obj_fake_evade_soul))) && (!(place_meeting(x, (y + 1), obj_tpe_evade_soul))) && (!(place_meeting(x, (y + 1), obj_evade_soul))))
                y += sign(vspd)
        }
    }
}

