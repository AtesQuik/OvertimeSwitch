if (whitenoise == 0)
{
    if (ishurt == 0)
    {
        if (flamewave == 0)
        {
            if (eye1 < 59)
                eye1 += 1
            else
                eye1 = 0
            if (eye2 < 59)
                eye2 += 1
            else
                eye2 = 0
        }
        if (headupdown == 0)
        {
            if (headbob < 12)
                headbob += 0.5
            else
                headupdown = 1
        }
        if (headupdown == 1)
        {
            if (headbob > 0)
                headbob -= 0.5
            else
                headupdown = 0
        }
    }
    eye1xshake = irandom_range(-2, 2)
    eye1yshake = irandom_range(-2, 2)
    eye2xshake = irandom_range(-2, 2)
    eye2yshake = irandom_range(-2, 2)
}
if (progress == 1)
{
    if (shootprogress == 0)
    {
        shootprogress = 1
        shooting = 1
        alarm[0] = 30
    }
    if (shootprogress == 2)
    {
        shootprogress = 3
        shooting = 2
        alarm[1] = 60
        audio_play_sound(snd_shoot, 1, false)
        alarm[4] = 20
    }
    if (shootprogress == 4)
        progress = 2
}
if (progress == 2)
{
    progress = 3
    ishurt = 1
    audio_play_sound(snd_enemy_hurt, 1, false)
    global.pyrohp -= 20
    with (instance_create(320, 400, obj_pl_damage_numbers))
        image_index = 3
    alarm[2] = 30
    eye1 = irandom_range(0, 15)
    eye2 = irandom_range(30, 45)
}
if (progress == 3)
{
    if (gunalpha > 0)
        gunalpha -= 0.05
    else
        shooting = 0
}
if (progress == 4)
{
    shooting = 0
    ishurt = 0
    progress = 0
    shootprogress = 0
    gunalpha = 1
}
if (global.pyrodark == 1 && whitenoise == 0)
{
    if (blackness > 0)
        blackness -= 0.05
    else
        global.pyrodark = 0
}
if (whitenoise == 1)
{
    if (blackness < 1)
        blackness += 0.05
    with (pyroweaponparent)
        instance_destroy()
    with (pyroattackparent)
        instance_destroy()
}
if (global.pyroprogress < 9)
{
    if (countdown <= 540)
    {
        with (obj_pl_fight)
            instance_destroy()
    }
}
if (alarmstart == 1)
{
    if (alarmupordown == 0)
    {
        if (alarmalpha < 1)
            alarmalpha += 0.05
        else
            alarmupordown = 1
    }
    if (alarmupordown == 1)
    {
        if (alarmalpha > 0)
            alarmalpha -= 0.05
        else
            alarmupordown = 0
    }
}
if (countdown > 0)
    countdown -= 1
if (flamewave == 1)
{
    if (flamewavescl < 0.25)
        flamewavescl += 0.025
}
if (global.pyroprogress == 3)
{
    balloonicolor = 65535
    if (countdown == 1740)
    {
        audio_play_sound(snd_flamewave, 1, false)
        flamewave = 1
        alarm[6] = 60
    }
    if (countdown == 1590)
    {
        instance_create(660, 400, obj_pl_flamethrower)
        instance_create(-20, 400, obj_pl_flamethrower)
    }
    if (countdown == 1410)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 1290)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 1170)
    {
        audio_play_sound(snd_flamewave2, 1, false)
        flamewave = 1
        alarm[7] = 60
    }
    if (countdown == 1000)
        instance_create(260, 80, obj_pl_fight)
    if (countdown == 960)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 840)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 780)
    {
        instance_create(660, 400, obj_pl_flamethrower)
        instance_create(-20, 400, obj_pl_flamethrower)
    }
    if (countdown == 720)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 560)
    {
        audio_play_sound(snd_flamewave, 1, false)
        flamewave = 1
        alarm[6] = 60
    }
    if (alarmstart == 0 && countdown <= 300)
    {
        alarmstart = 1
        audio_play_sound(snd_pyro_alarm, 1, false)
    }
    if (countdown == 0 && whitenoise == 0)
    {
        with (obj_pl_fight)
            instance_destroy()
        with (obj_music_player)
            instance_destroy()
        whitenoise = 1
        audio_play_sound(snd_tv, 1, false)
        with (obj_pl_evade_soul)
            instance_destroy()
        with (instance_create(global.soulxposition, global.soulyposition, obj_pl_soulmove2))
        {
            movetox = 320
            movetoy = 320
        }
        with (instance_create(230, (184 + headbob), obj_pl_whitenoise))
        {
            noisecolor = other.balloonicolor
            headbob = other.headbob
        }
        with (instance_create(330, (190 + headbob), obj_pl_whitenoise))
        {
            noisecolor = other.balloonicolor
            headbob = other.headbob
        }
    }
    if (whitenoise == 1)
    {
        if (!audio_is_playing(snd_tv))
            room_goto(rm_pl_balloonicorn1)
    }
}
if (global.pyroprogress == 4)
{
    balloonicolor = 16711935
    if (countdown == 1740)
    {
        instance_create(660, 400, obj_pl_flamethrower)
        instance_create(-20, 400, obj_pl_flamethrower)
    }
    if (countdown == 1600)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 1540)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 1480)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 1420)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 1330)
    {
        audio_play_sound(snd_flamewave, 1, false)
        flamewave = 1
        alarm[6] = 60
    }
    if (countdown == 1120)
        instance_create(0, 0, obj_pl_flaregunspawn)
    if (countdown == 860)
        instance_create(260, 80, obj_pl_fight)
    if (countdown == 790)
    {
        instance_create(660, 400, obj_pl_flamethrower)
        instance_create(-20, 400, obj_pl_flamethrower)
    }
    if (countdown == 730)
        instance_create(570, 560, obj_pl_axe)
    if (countdown == 700)
        instance_create(570, 560, obj_pl_axe)
    if (countdown == 670)
        instance_create(570, 560, obj_pl_axe)
    if (countdown == 610)
        instance_create(70, 560, obj_pl_axe)
    if (countdown == 580)
        instance_create(70, 560, obj_pl_axe)
    if (countdown == 550)
        instance_create(70, 560, obj_pl_axe)
    if (alarmstart == 0 && countdown <= 420)
    {
        alarmstart = 1
        audio_play_sound(snd_pyro_alarm, 1, false)
    }
    if (countdown == 120 && whitenoise == 0)
    {
        with (obj_pl_fight)
            instance_destroy()
        with (obj_music_player)
            instance_destroy()
        whitenoise = 1
        audio_play_sound(snd_tv, 1, false)
        with (obj_pl_evade_soul)
            instance_destroy()
        with (instance_create(global.soulxposition, global.soulyposition, obj_pl_soulmove2))
        {
            movetox = 320
            movetoy = 240
        }
        with (instance_create(230, (184 + headbob), obj_pl_whitenoise))
        {
            noisecolor = other.balloonicolor
            headbob = other.headbob
        }
        with (instance_create(330, (190 + headbob), obj_pl_whitenoise))
        {
            noisecolor = other.balloonicolor
            headbob = other.headbob
        }
    }
    if (whitenoise == 1)
    {
        if (!audio_is_playing(snd_tv))
            room_goto(rm_pl_balloonicorn2)
    }
}
if (global.pyroprogress == 5)
{
    balloonicolor = 16776960
    if (countdown == 1740)
        instance_create(0, 0, obj_pl_flaregunspawn)
    if (countdown == 1560)
    {
        audio_play_sound(snd_flamewave2, 1, false)
        flamewave = 1
        alarm[7] = 60
    }
    if (countdown == 1320)
    {
        instance_create(68, 380, obj_pl_gastank)
        instance_create(572, 380, obj_pl_gastank)
    }
    if (countdown == 1200)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 1140)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 1080)
        instance_create(-20, 400, obj_pl_flamethrower)
    if (countdown == 1000)
        instance_create(260, 80, obj_pl_fight)
    if (countdown == 960)
        instance_create(660, 400, obj_pl_flamethrower)
    if (countdown == 840)
    {
        audio_play_sound(snd_flamewave, 1, false)
        flamewave = 1
        alarm[6] = 60
    }
    if (countdown == 660)
        instance_create(0, 0, obj_pl_flaregunspawn)
    if (alarmstart == 0 && countdown <= 300)
    {
        alarmstart = 1
        audio_play_sound(snd_pyro_alarm, 1, false)
    }
    if (countdown == 0 && whitenoise == 0)
    {
        with (obj_pl_fight)
            instance_destroy()
        with (obj_music_player)
            instance_destroy()
        whitenoise = 1
        audio_play_sound(snd_tv, 1, false)
        with (obj_pl_evade_soul)
            instance_destroy()
        with (instance_create(global.soulxposition, global.soulyposition, obj_pl_soulmove2))
        {
            movetox = 320
            movetoy = 240
        }
        with (instance_create(230, (184 + headbob), obj_pl_whitenoise))
        {
            noisecolor = other.balloonicolor
            headbob = other.headbob
        }
        with (instance_create(330, (190 + headbob), obj_pl_whitenoise))
        {
            noisecolor = other.balloonicolor
            headbob = other.headbob
        }
    }
    if (whitenoise == 1)
    {
        if (!audio_is_playing(snd_tv))
            room_goto(rm_pl_balloonicorn3)
    }
}
if (global.pyroprogress == 6)
{
    balloonicolor = 4235519
    if (countdown == 1620)
    {
        audio_play_sound(snd_flamewave2, 1, false)
        flamewave = 1
        alarm[7] = 60
    }
    if (countdown == 1540)
    {
        instance_create(68, 380, obj_pl_gastank)
        instance_create(572, 380, obj_pl_gastank)
    }
    if (countdown == 1360)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 1330)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 1270)
    {
        instance_create(660, 400, obj_pl_flamethrower)
        instance_create(-20, 400, obj_pl_flamethrower)
    }
    if (countdown == 1090)
        instance_create(0, 0, obj_pl_flaregunspawn)
    if (countdown == 940)
        instance_create(260, 80, obj_pl_fight)
    if (countdown == 850)
    {
        instance_create(68, 380, obj_pl_gastank)
        instance_create(572, 380, obj_pl_gastank)
    }
    if (countdown == 760)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 730)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 610)
    {
        audio_play_sound(snd_flamewave2, 1, false)
        flamewave = 1
        alarm[7] = 60
    }
    if (alarmstart == 0 && countdown <= 330)
    {
        alarmstart = 1
        audio_play_sound(snd_pyro_alarm, 1, false)
    }
    if (countdown == 30 && whitenoise == 0)
    {
        with (obj_pl_fight)
            instance_destroy()
        with (obj_music_player)
            instance_destroy()
        whitenoise = 1
        audio_play_sound(snd_tv, 1, false)
        with (obj_pl_evade_soul)
            instance_destroy()
        with (instance_create(global.soulxposition, global.soulyposition, obj_pl_soulmove2))
        {
            movetox = 320
            movetoy = 240
        }
        with (instance_create(230, (184 + headbob), obj_pl_whitenoise))
        {
            noisecolor = other.balloonicolor
            headbob = other.headbob
        }
        with (instance_create(330, (190 + headbob), obj_pl_whitenoise))
        {
            noisecolor = other.balloonicolor
            headbob = other.headbob
        }
    }
    if (whitenoise == 1)
    {
        if (!audio_is_playing(snd_tv))
            room_goto(rm_pl_balloonicorn4)
    }
}
if (global.pyroprogress == 7)
{
    balloonicolor = 16711680
    if (countdown == 1740)
    {
        instance_create(68, 380, obj_pl_gastank)
        instance_create(572, 380, obj_pl_gastank)
    }
    if (countdown == 1580)
    {
        instance_create(660, 400, obj_pl_flamethrower)
        instance_create(-20, 400, obj_pl_flamethrower)
    }
    if (countdown == 1340)
        instance_create(0, 0, obj_pl_flaregunspawn)
    if (countdown == 1000)
        instance_create(260, 80, obj_pl_fight)
    if (countdown == 1085)
        instance_create(70, 560, obj_pl_axe)
    if (countdown == 1070)
        instance_create(570, 560, obj_pl_axe)
    if (countdown == 1055)
        instance_create(70, 560, obj_pl_axe)
    if (countdown == 1040)
        instance_create(570, 560, obj_pl_axe)
    if (countdown == 920)
        instance_create(0, 0, obj_pl_flaregunspawn)
    if (countdown == 680)
    {
        instance_create(68, 380, obj_pl_gastank)
        instance_create(572, 380, obj_pl_gastank)
    }
    if (countdown == 560)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 500)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (alarmstart == 0 && countdown <= 300)
    {
        alarmstart = 1
        audio_play_sound(snd_pyro_alarm, 1, false)
    }
    if (countdown == 0 && whitenoise == 0)
    {
        with (obj_pl_fight)
            instance_destroy()
        with (obj_music_player)
            instance_destroy()
        whitenoise = 1
        audio_play_sound(snd_tv, 1, false)
        with (obj_pl_evade_soul)
            instance_destroy()
        with (instance_create(global.soulxposition, global.soulyposition, obj_pl_soulmove2))
        {
            movetox = 320
            movetoy = 320
        }
        with (instance_create(230, (184 + headbob), obj_pl_whitenoise))
        {
            noisecolor = other.balloonicolor
            headbob = other.headbob
        }
        with (instance_create(330, (190 + headbob), obj_pl_whitenoise))
        {
            noisecolor = other.balloonicolor
            headbob = other.headbob
        }
    }
    if (whitenoise == 1)
    {
        if (!audio_is_playing(snd_tv))
            room_goto(rm_pl_balloonicorn5)
    }
}
if (global.pyroprogress == 8)
{
    balloonicolor = 8388736
    if (countdown == 1620)
    {
        audio_play_sound(snd_flamewave, 1, false)
        flamewave = 1
        alarm[6] = 60
    }
    if (countdown == 1590)
    {
        instance_create(570, 560, obj_pl_axe)
        instance_create(70, 560, obj_pl_axe)
    }
    if (countdown == 1530)
    {
        instance_create(660, 400, obj_pl_flamethrower)
        instance_create(-20, 400, obj_pl_flamethrower)
    }
    if (countdown == 1470)
    {
        audio_play_sound(snd_flamewave2, 1, false)
        flamewave = 1
        alarm[7] = 60
    }
    if (countdown == 1340)
        instance_create(0, 0, obj_pl_flaregunspawn)
    if (countdown == 1100)
    {
        instance_create(68, 380, obj_pl_gastank)
        instance_create(572, 380, obj_pl_gastank)
    }
    if (countdown == 960)
        instance_create(570, 560, obj_pl_axe)
    if (countdown == 900)
        instance_create(260, 80, obj_pl_fight)
    if (countdown == 930)
        instance_create(70, 560, obj_pl_axe)
    if (countdown == 900)
        instance_create(570, 560, obj_pl_axe)
    if (countdown == 870)
        instance_create(70, 560, obj_pl_axe)
    if (countdown == 840)
        instance_create(570, 560, obj_pl_axe)
    if (countdown == 780)
    {
        instance_create(68, 380, obj_pl_gastank)
        instance_create(572, 380, obj_pl_gastank)
    }
    if (countdown == 660)
    {
        audio_play_sound(snd_flamewave, 1, false)
        flamewave = 1
        alarm[6] = 60
    }
    if (countdown == 600)
        instance_create(570, 560, obj_pl_axe)
    if (countdown == 540)
        instance_create(70, 560, obj_pl_axe)
    if (countdown == 480)
        instance_create(570, 560, obj_pl_axe)
    if (alarmstart == 0 && countdown <= 330)
    {
        alarmstart = 1
        audio_play_sound(snd_pyro_alarm, 1, false)
    }
    if (countdown == 30 && whitenoise == 0)
    {
        with (obj_pl_fight)
            instance_destroy()
        with (obj_music_player)
            instance_destroy()
        whitenoise = 1
        audio_play_sound(snd_tv, 1, false)
        with (obj_pl_evade_soul)
            instance_destroy()
        with (instance_create(global.soulxposition, global.soulyposition, obj_pl_soulmove2))
        {
            movetox = 320
            movetoy = 400
        }
        with (instance_create(230, (184 + headbob), obj_pl_whitenoise))
        {
            noisecolor = other.balloonicolor
            headbob = other.headbob
        }
        with (instance_create(330, (190 + headbob), obj_pl_whitenoise))
        {
            noisecolor = other.balloonicolor
            headbob = other.headbob
        }
    }
    if (whitenoise == 1)
    {
        if (!audio_is_playing(snd_tv))
            room_goto(rm_pl_balloonicorn6)
    }
}
if (global.pyroprogress == 9)
{
    if (pyroisdead == 0)
    {
        if (akimboprogress == 1)
        {
            if (akimboshootprogress == 0)
            {
                akimboshootprogress = 3
                akimbo = 2
                alarm[1] = 60
                audio_play_sound(snd_shoot, 1, false)
                alarm[4] = 20
            }
            if (akimboshootprogress == 4)
                akimboprogress = 2
        }
        if (akimboprogress == 2)
        {
            akimboprogress = 3
            akimboshootprogress = 0
            ishurt = 1
            audio_play_sound(snd_extreme_damage, 1, false)
            global.pyrohp -= 20
            with (instance_create(320, 400, obj_pl_damage_numbers))
                image_index = 3
            alarm[2] = 30
            eye1 = irandom_range(0, 15)
            eye2 = irandom_range(30, 45)
        }
        if (akimboprogress == 4)
        {
            ishurt = 0
            akimboshootprogress = 0
        }
        if (akimboprogress == 5)
        {
            if (akimboshootprogress == 0)
            {
                akimboshootprogress = 3
                akimbo = 4
                alarm[1] = 60
                audio_play_sound(snd_shoot, 1, false)
                alarm[4] = 20
            }
            if (akimboshootprogress == 4)
                akimboprogress = 6
        }
        if (akimboprogress == 6)
        {
            akimboprogress = 7
            ishurt = 1
            audio_play_sound(snd_extreme_damage, 1, false)
            global.pyrohp -= 20
            with (instance_create(320, 400, obj_pl_damage_numbers))
                image_index = 3
            alarm[10] = 30
            eye1 = irandom_range(0, 15)
            eye2 = irandom_range(30, 45)
        }
        if (akimboprogress == 8)
        {
            ishurt = 0
            akimboprogress = 0
            akimboshootprogress = 0
        }
        if (global.pyrohp <= 1000 && global.pyrohp > 750)
        {
            if (countdown == 80)
            {
                with (instance_create(choose(160, 480), 540, obj_pl_f_balloonihelp))
                {
                    depth = -93
                    healamount = 5
                    image_index = 1
                    sprite_index = choose(579, 568, 567, 577, 573, 434, 580, 570)
                }
            }
        }
        if (global.pyrohp <= 750 && global.pyrohp > 500)
        {
            if (countdown == 80)
            {
                with (instance_create(choose(160, 480), 540, obj_pl_f_balloonihelp))
                {
                    depth = -93
                    healamount = 10
                    image_index = 1
                    sprite_index = choose(579, 568, 567, 577, 573, 434, 580, 570)
                }
            }
            if instance_exists(obj_pyro_fireball)
            {
                with (obj_pyro_fireball)
                    damagedone = 2
            }
            if instance_exists(obj_pyro_fireball2)
            {
                with (obj_pyro_fireball2)
                    damagedone = 2
            }
            if instance_exists(obj_pl_flame)
            {
                with (obj_pl_flame)
                    damagedone = 2
            }
            if instance_exists(obj_pl_rocket)
            {
                with (obj_pl_rocket)
                    damagedone = 2
            }
            if instance_exists(obj_pl_flare)
            {
                with (obj_pl_flare)
                    damagedone = 2
            }
            if instance_exists(obj_pl_explode)
            {
                with (obj_pl_explode)
                    damagedone = 2
            }
            if instance_exists(obj_pl_axe)
            {
                with (obj_pl_axe)
                    damagedone = 2
            }
        }
        if (global.pyrohp <= 500 && global.pyrohp > 250)
        {
            if (countdown == 80)
            {
                with (instance_create(choose(160, 480), 540, obj_pl_f_balloonihelp))
                {
                    depth = -93
                    healamount = 15
                    image_index = 1
                    sprite_index = choose(579, 568, 567, 577, 573, 434, 580, 570)
                }
            }
            if instance_exists(obj_pyro_fireball)
            {
                with (obj_pyro_fireball)
                    damagedone = 3
            }
            if instance_exists(obj_pyro_fireball2)
            {
                with (obj_pyro_fireball2)
                    damagedone = 3
            }
            if instance_exists(obj_pl_flame)
            {
                with (obj_pl_flame)
                    damagedone = 3
            }
            if instance_exists(obj_pl_rocket)
            {
                with (obj_pl_rocket)
                    damagedone = 3
            }
            if instance_exists(obj_pl_flare)
            {
                with (obj_pl_flare)
                    damagedone = 3
            }
            if instance_exists(obj_pl_explode)
            {
                with (obj_pl_explode)
                    damagedone = 3
            }
            if instance_exists(obj_pl_axe)
            {
                with (obj_pl_axe)
                    damagedone = 3
            }
        }
        if (global.pyrohp <= 250 && global.pyrohp > 0)
        {
            if (countdown == 100)
            {
                with (instance_create(choose(160, 480), 540, obj_pl_f_balloonihelp))
                {
                    depth = -93
                    healamount = 20
                    image_index = 1
                    sprite_index = choose(579, 568, 567, 577, 573, 434, 580, 570)
                }
            }
            if instance_exists(obj_pyro_fireball)
            {
                with (obj_pyro_fireball)
                    damagedone = 4
            }
            if instance_exists(obj_pyro_fireball2)
            {
                with (obj_pyro_fireball2)
                    damagedone = 4
            }
            if instance_exists(obj_pl_flame)
            {
                with (obj_pl_flame)
                    damagedone = 4
            }
            if instance_exists(obj_pl_rocket)
            {
                with (obj_pl_rocket)
                    damagedone = 4
            }
            if instance_exists(obj_pl_flare)
            {
                with (obj_pl_flare)
                    damagedone = 4
            }
            if instance_exists(obj_pl_explode)
            {
                with (obj_pl_explode)
                    damagedone = 4
            }
            if instance_exists(obj_pl_axe)
            {
                with (obj_pl_axe)
                    damagedone = 4
            }
        }
        if (countdown == 0)
        {
            if (finalattack == 0)
            {
                finalattack = choose(1, 2, 3, 4, 5)
                countdown = 240
                audio_play_sound(snd_flamewave, 1, false)
                flamewave = 1
                alarm[6] = 60
            }
            else if (finalattack == 1)
            {
                finalattack = choose(0, 2, 3, 4, 5)
                countdown = 240
                audio_play_sound(snd_flamewave2, 1, false)
                flamewave = 1
                alarm[7] = 60
            }
            else if (finalattack == 2)
            {
                finalattack = choose(0, 1, 3, 4, 5)
                countdown = 360
                instance_create(0, 0, obj_pl_flaregunspawn)
            }
            else if (finalattack == 3)
            {
                finalattack = choose(0, 1, 2, 4, 5)
                countdown = 120
                instance_create(68, 380, obj_pl_gastank)
                instance_create(572, 380, obj_pl_gastank)
            }
            else if (finalattack == 4)
            {
                finalattack = choose(0, 1, 2, 3, 5)
                countdown = 120
                instance_create(660, 400, obj_pl_flamethrower)
                instance_create(-20, 400, obj_pl_flamethrower)
            }
            else if (finalattack == 5)
            {
                finalattack = choose(0, 1, 2, 3, 4)
                countdown = 120
                instance_create(570, 560, obj_pl_axe)
                instance_create(70, 560, obj_pl_axe)
            }
        }
        if (global.pyrohp <= 0)
        {
            pyroisdead = 1
            if audio_is_playing(snd_flamethrower_appear)
                audio_stop_sound(snd_flamethrower_appear)
            instance_create(0, 0, obj_pl_whitescreen)
            with (obj_music_player)
                instance_destroy()
            with (pyroattackparent)
                instance_destroy()
            with (pyroweaponparent)
                instance_destroy()
            with (obj_pl_f_balloonihelp)
                instance_destroy()
        }
    }
}

