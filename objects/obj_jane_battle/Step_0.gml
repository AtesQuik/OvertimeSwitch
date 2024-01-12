var __b__;
action_set_relative(0)
if (global.enemiesleft > 0)
{
    if (instance_exists(obj_enemy_down) || instance_exists(obj_enemy_spared))
    {
        global.genocideaborted = 1
        global.genocide = 0
    }
}
global.soultype = 1
if (enemyhealth <= 0)
{
    with (obj_evade_soul)
        instance_destroy()
    if (isdying == 0)
    {
        global.evadetime = 0
        with (obj_music_player)
            instance_destroy()
        isdying = 1
        alarm[11] = 30
        if (global.genocide == 1)
        {
            alarm[8] = 90
            geno = 1
        }
        if (global.genocide == 0 && (!(place_meeting(x, y, obj_enemy_spareable))))
        {
            alarm[9] = 90
            geno = 0
        }
        if (global.genocide == 0 && place_meeting(x, y, obj_enemy_spareable))
            alarm[10] = 90
    }
}
if (sparemeter <= 0 && (!(place_meeting(x, y, obj_enemy_down))))
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
        instance_create(x, y, obj_enemy_spareable)
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            instance_create(x, y, obj_enemy_spared)
            instance_create(x, y, obj_spare_effect)
            global.enemiesspared += 1
            global.janehired = 1
            global.genocideaborted = 1
        }
    }
}
if (place_meeting(x, y, obj_damaging_enemy) && enemyhurt == 0 && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (obj_damaging_enemy)
        instance_destroy()
    script_execute(scr_damage_numbers)
    if (global.enemydamage > 0)
    {
        audio_play_sound(snd_enemy_hurt, 1, false)
        enemyhurt = 1
        alarm[0] = 30
        if (global.genocide == 0)
        {
            if (!(place_meeting(x, y, obj_enemy_spareable)))
                enemyhealth -= global.enemydamage
            else
            {
                global.enemydamage = global.betrayaldamage
                enemyhealth = 0
            }
        }
        else if (global.genocide == 1)
        {
            global.enemydamage = global.betrayaldamage
            enemyhealth = 0
        }
    }
}
script_execute(scr_sparemeter_limit)
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0)
{
    alarm[3] = global.evadetime
    if (global.genocide == 0)
    {
        attacking = 1
        if (sparemeter == 65)
        {
            with (instance_create(330, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(450, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(570, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(690, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
        }
        if (sparemeter == 60)
        {
            with (instance_create(330, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(430, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(430, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(530, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(630, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(630, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
        }
        if (sparemeter == 55)
        {
            with (instance_create(330, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(330, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(440, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(440, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(560, 190, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(560, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(560, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(-360, 160, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-360, 150, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-360, 140, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-510, 160, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-510, 150, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-510, 140, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-660, 165, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-660, 155, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-660, 145, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
        }
        if (sparemeter == 50)
        {
            with (instance_create(330, 190, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(330, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(330, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(440, 160, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(440, 150, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(440, 140, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(550, 190, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(550, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(550, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(-340, 160, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-340, 150, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-340, 140, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-450, 170, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-450, 180, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-450, 190, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-560, 160, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-560, 150, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-560, 140, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
        }
        if (sparemeter == 45)
        {
            with (instance_create(330, 190, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(330, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(330, 150, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(330, 140, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(430, 190, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(430, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(430, 150, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(430, 140, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(540, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(540, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(540, 150, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(540, 140, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(-340, 190, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(-340, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(-340, 150, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(-340, 140, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(-440, 190, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(-440, 180, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-440, 150, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-440, 140, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-550, 155, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-550, 145, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-590, 185, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-590, 175, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
        }
        if (sparemeter == 40)
        {
            with (instance_create(330, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(330, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(510, 160, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(510, 150, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(690, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(690, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(-190, 185, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-190, 175, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-370, 160, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-370, 150, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
        }
        if (sparemeter == 35)
        {
            with (instance_create(365, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(380, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(395, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(540, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(555, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(570, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(725, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(740, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(755, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(-260, 145, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-245, 155, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-230, 145, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
        }
        if (sparemeter == 30)
        {
            with (instance_create(330, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(490, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(650, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(810, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(-10, 170, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-170, 170, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-330, 170, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-490, 170, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
        }
        if (sparemeter == 25)
        {
            with (instance_create(330, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(490, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(650, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(810, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(-10, 185, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-170, 180, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-330, 175, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-490, 170, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
        }
        if (sparemeter == 20)
        {
            with (instance_create(350, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(385, 160, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(515, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(545, 160, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(690, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(690, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(750, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(750, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(805, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(805, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(850, 160, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(850, 150, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(900, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(900, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(940, 160, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(940, 150, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(985, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(985, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
        }
        if (sparemeter == 15)
        {
            with (instance_create(330, 185, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(330, 175, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(470, 185, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(610, 185, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(610, 175, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(730, 185, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(850, 185, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(850, 170, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(945, 160, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(945, 145, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(1050, 185, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(1050, 170, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(1170, 160, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(1170, 145, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
        }
        if (sparemeter == 10)
        {
            with (instance_create(330, 190, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(345, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(360, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(375, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(390, 190, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(650, 190, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(665, 180, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(680, 170, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(695, 180, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(710, 190, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(650, 140, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(665, 150, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(680, 160, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(695, 150, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(710, 140, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1030, 140, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(1045, 150, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(1060, 160, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(1075, 150, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(1090, 140, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
        }
        if (sparemeter == 5)
        {
            with (instance_create(560, 180, obj_jane_rocket))
            {
                spd = -3
                damagedone = other.enemyattack
            }
            with (instance_create(-30, 185, obj_jane_rocket))
            {
                spd = 3
                damagedone = other.enemyattack
            }
            with (instance_create(-340, 170, obj_jane_rocket))
            {
                spd = 3
                damagedone = other.enemyattack
            }
            with (instance_create(695, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(695, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1000, 165, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1000, 155, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1140, 190, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1155, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1170, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1185, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1200, 190, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1205, 135, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1220, 145, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1235, 155, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1360, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1375, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1475, 180, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1475, 170, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1750, 185, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1750, 175, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1790, 160, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(1790, 150, obj_jane_rocket))
            {
                spd = -2
                damagedone = other.enemyattack
            }
            with (instance_create(-510, 160, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-510, 150, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-1290, 185, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-1290, 175, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-1335, 160, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-1335, 150, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-1570, 180, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-1570, 170, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-1615, 160, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(-1615, 150, obj_jane_rocket))
            {
                spd = 2
                damagedone = other.enemyattack
            }
        }
        if (sparemeter == 0)
        {
            if (sparingyou == 0)
            {
                sparingyou = 1
                instance_create(0, 0, obj_jane_extra_box)
                instance_create(183, 183, obj_bites_battle)
            }
        }
    }
}
if (isdying == 2 && (!instance_exists(obj_speech_bubble_noevade)) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (obj_jane_head)
    {
        if (enemydead == 0)
            enemydead = 1
    }
    if (obj_jane_head.enemydead == 3)
    {
        if (diestoo == 0)
        {
            diestoo = 1
            with (obj_evade_to_box)
                instance_destroy()
            with (obj_box_to_evade)
                instance_destroy()
            with (obj_evade_ground)
                instance_destroy()
            with (obj_soul_battle_select)
                instance_destroy()
            alarm[6] = 1
            instance_create(x, y, obj_enemy_down)
            global.xpyouwillget += xpreceive
            global.cashyouwillget += 0
            global.enemieskilled += 1
            global.janekilled = 1
            global.teufortover = 1
            global.increaselv = 1
            script_execute(scr_battle_end)
        }
    }
}
if (enemyhealth <= 0)
    global.evadetime = 0
else if (global.genocide == 1)
    global.evadetime = 1
else if (global.genocide == 0)
{
    if (reducing == 0)
        global.evadetime = 1
    else
    {
        if (sparemeter == 65)
            global.evadetime = 330
        if (sparemeter == 60)
            global.evadetime = 330
        if (sparemeter == 55)
            global.evadetime = 450
        if (sparemeter == 50)
            global.evadetime = 420
        if (sparemeter == 45)
            global.evadetime = 420
        if (sparemeter == 40)
            global.evadetime = 360
        if (sparemeter == 35)
            global.evadetime = 390
        if (sparemeter == 30)
            global.evadetime = 360
        if (sparemeter == 25)
            global.evadetime = 360
        if (sparemeter == 20)
            global.evadetime = 480
        if (sparemeter == 15)
            global.evadetime = 390
        if (sparemeter == 10)
            global.evadetime = 390
        if (sparemeter == 5)
            global.evadetime = 960
        if (sparingyou < 2)
        {
            if (sparemeter == 0)
                global.evadetime = 240
        }
    }
}
scr_enemy_names()
scr_enemy_death_transparency()
if (place_meeting(x, y, obj_actwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_actwave))
        instance_destroy()
    alarm[5] = 1
    global.evadetime = 1
}
if (place_meeting(x, y, obj_fightwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_fightwave))
        instance_destroy()
    if (enemyhealth > 0)
    {
        if (sparingyou == 2)
        {
            alarm[5] = 30
            global.evadetime = 1
        }
        else
            alarm[7] = 30
    }
}
if (place_meeting(x, y, obj_itemwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_itemwave))
        instance_destroy()
    if (sparemeter > 0)
    {
        if (global.genocide == 1)
            alarm[5] = 1
        else
            alarm[7] = 1
    }
    else if (sparingyou == 2)
    {
        alarm[5] = 1
        global.evadetime = 1
    }
    else
        alarm[7] = 1
}
if (global.flee == 0 && place_meeting(x, y, obj_fleewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_fleewave))
        instance_destroy()
    alarm[5] = 1
}
action_set_relative(1)
__b__ = action_if_object(101, 0, 0)
action_set_relative(0)
if (!__b__)
{
    action_set_relative(1)
    __b__ = action_if_object(100, 0, 0)
    action_set_relative(0)
    if (!__b__)
    {
        action_set_relative(1)
        __b__ = action_if_object(112, 0, 0)
        action_set_relative(0)
        if __b__
            scr_enemy_set_act_names()
        if (global.isacting == 1 && waitingfortext == 0 && place_meeting(x, y, obj_youact))
        {
            waitingfortext = 1
            with (obj_youact)
                instance_destroy()
            if (global.actchoice < 1)
            {
                actchoice = 4
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You stand straight and#  salute Jane."
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You shout various insults#  at Jane."
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You try to run away from#  the battle, but Jane#  stops you...somehow."
                    }
                }
            }
        }
        if (place_meeting(x, y, obj_sparewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
        {
            with (instance_position(x, y, obj_sparewave))
                instance_destroy()
            if (global.genocide == 1)
                sparemeter = 0
            alarm[7] = 1
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

