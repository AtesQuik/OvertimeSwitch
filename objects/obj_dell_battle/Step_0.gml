var __b__;
action_set_relative(1)
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
if (place_meeting(x, y, obj_damaging_enemy) && enemyhurt == 0 && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (obj_damaging_enemy)
        instance_destroy()
    instance_create(x, 29, obj_miss)
}
if (global.gunfired == 1 && moveaway == 0)
{
    moveaway = 1
    path_start(path_dell_move, 4, path_action_stop, 0)
    if (sparingyou == 1)
    {
        with (obj_music_player)
            instance_destroy()
    }
}
script_execute(scr_sparemeter_limit)
if (phasetwo == 0 && instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0)
{
    alarm[3] = global.evadetime
    attacking = 1
    if (sparemeter == 30)
    {
        global.evadetime = 300
        global.soultype = 1
        with (instance_create(45, 165, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(45, 55, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-115, 165, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-115, 55, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-260, 165, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-260, 55, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(355, 165, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(355, 55, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(500, 165, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(500, 55, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(645, 165, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(645, 55, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
    }
    if (sparemeter == 25)
    {
        global.evadetime = 460
        global.soultype = 1
        with (instance_create(250, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(265, 165, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(280, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(315, 80, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(345, 175, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(360, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(375, 165, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(390, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(405, 175, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(640, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(655, 165, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(670, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(705, 80, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(735, 175, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(750, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(765, 165, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(780, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(795, 175, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-135, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-150, 165, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-165, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-200, 80, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-230, 175, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-245, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-260, 165, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-275, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-290, 175, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-525, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-540, 165, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-555, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-590, 80, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-620, 175, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-635, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-650, 165, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-665, 170, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-680, 175, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
    }
    if (sparemeter == 20)
    {
        global.evadetime = 460
        global.soultype = 1
        with (instance_create(35, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(20, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(5, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-10, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-25, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-40, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-55, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-70, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-85, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-100, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-115, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-130, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-145, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-160, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-175, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-190, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-205, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-220, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-140, 140, obj_dell_wrench))
        {
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-215, 140, obj_dell_wrench))
        {
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-285, 140, obj_dell_wrench))
        {
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-355, 140, obj_dell_wrench))
        {
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-425, 140, obj_dell_wrench))
        {
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-495, 140, obj_dell_wrench))
        {
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-565, 140, obj_dell_wrench))
        {
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-630, 140, obj_dell_wrench))
        {
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-250, 45, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-320, 50, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-390, 50, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-460, 50, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-530, 50, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-600, 50, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(1030, 165, obj_dell_wrench))
        {
            movedirection = 2
            spd = 2
            damagedone = other.enemyattack
        }
        with (instance_create(-100, 170, obj_dell_platform))
        {
            movedirection = 1
            spd = 2
        }
        with (instance_create(-175, 170, obj_dell_platform))
        {
            movedirection = 1
            spd = 2
        }
        with (instance_create(-250, 170, obj_dell_platform))
        {
            movedirection = 1
            spd = 2
        }
        with (instance_create(-320, 170, obj_dell_platform))
        {
            movedirection = 1
            spd = 2
        }
        with (instance_create(-390, 170, obj_dell_platform))
        {
            movedirection = 1
            spd = 2
        }
        with (instance_create(-460, 170, obj_dell_platform))
        {
            movedirection = 1
            spd = 2
        }
        with (instance_create(-530, 170, obj_dell_platform))
        {
            movedirection = 1
            spd = 2
        }
        with (instance_create(-600, 170, obj_dell_platform))
        {
            movedirection = 1
            spd = 2
        }
    }
    if (sparemeter == 15)
    {
        global.evadetime = 480
        global.soultype = 1
        with (instance_create(160, 170, obj_dell_platform))
            spd = 0
        with (instance_create(80, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(65, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(50, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(35, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(20, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(5, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-10, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-25, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-40, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-55, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-70, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-85, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-130, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-145, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-160, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-175, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-190, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-205, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-220, 180, obj_dell_wrench))
        {
            movedirection = 1
            spd = 1
            damagedone = other.enemyattack
        }
        with (instance_create(-20, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(-220, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(-420, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(-820, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(-1020, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(-45, 50, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(-245, 50, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(-845, 50, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(440, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(640, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(1040, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(1240, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(465, 50, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(665, 50, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(840, 65, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(855, 65, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(1065, 50, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(1265, 50, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(1440, 65, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(1455, 65, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
    }
    if (sparemeter == 10)
    {
        global.evadetime = 600
        global.soultype = 1
        with (instance_create(160, 170, obj_dell_platform))
            spd = 0
        with (instance_create(-20, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(-220, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(-420, 65, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(-620, 65, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(-820, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(-1020, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(-1220, 65, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(-1420, 65, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 1
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(440, 65, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(640, 65, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(840, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(1040, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(1240, 65, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(1440, 65, obj_dell_wrench))
        {
            bottomortop = 1
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(1640, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(1840, 145, obj_dell_wrench))
        {
            bottomortop = 0
            movedirection = 2
            spd = 3
            damagedone = other.enemyattack
        }
    }
}
if (phasetwo == 1 && instance_exists(obj_evade_ground) && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0)
{
    if (sparemeter == 35)
    {
        if (!instance_exists(obj_music_player))
        {
            with (instance_create(0, 0, obj_music_player))
                musictrack = 187
        }
    }
    if (attacking == 0)
    {
        alarm[3] = global.evadetime
        attacking = 1
    }
    else
    {
        counter += 1
        if (sparemeter == 30)
        {
            global.evadetime = 530
            if (counter == 1)
            {
                global.soultype = 1
                with (instance_create(160, 170, obj_dell_platform))
                    spd = 0
                with (instance_create(265, 65, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 3
                }
                with (instance_create(-105, 150, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 3
                }
            }
            if (counter == 100)
                instance_create(x, y, obj_mbm_tele)
            if (counter == 129)
            {
                global.soultype = 0
                obj_evade_soul.x = 160
                obj_evade_soul.y = 160
                global.soulxposition = 160
                global.soulyposition = 160
            }
            if (counter == 130)
            {
                with (instance_create(-30, 160, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 90
                    gotoy = 160
                }
                with (instance_create(160, 345, obj_frontier_justice))
                {
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 160
                    gotoy = 225
                }
                with (instance_create(350, 160, obj_frontier_justice))
                {
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 230
                    gotoy = 160
                }
                with (instance_create(160, -25, obj_frontier_justice))
                {
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 160
                    gotoy = 95
                }
            }
            if (counter == 130)
                global.soultype = 0
            if (counter == 160)
                instance_create(x, y, obj_mbm_tele)
            if (counter == 189)
            {
                global.soultype = 1
                obj_evade_soul.x = 160
                obj_evade_soul.y = 160
                global.soulxposition = 160
                global.soulyposition = 160
            }
            if (counter == 190)
            {
                with (instance_create(55, 65, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 3
                }
                with (instance_create(70, 65, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 3
                }
                with (instance_create(240, 165, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 3
                }
                with (instance_create(255, 165, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 3
                }
            }
            if (counter == 230)
                instance_create(x, y, obj_mbm_tele)
            if (counter == 259)
            {
                global.soultype = 1
                obj_evade_soul.x = 160
                obj_evade_soul.y = 160
                global.soulxposition = 160
                global.soulyposition = 160
                with (instance_create(160, 170, obj_dell_platform))
                    spd = 0
            }
            if (counter == 275)
            {
                global.soultype = 1
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 131
                    x2 = 195
                    y2 = 159
                }
            }
            if (counter == 290)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(125, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 70
                    yspeed = 10
                }
                with (instance_create(140, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 70
                    yspeed = 10
                }
                with (instance_create(155, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 70
                    yspeed = 10
                }
                with (instance_create(170, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 70
                    yspeed = 10
                }
                with (instance_create(185, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 70
                    yspeed = 10
                }
            }
            if (counter == 315)
            {
                global.soultype = 1
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 163
                    x2 = 195
                    y2 = 190
                }
            }
            if (counter == 330)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(125, 185, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
                with (instance_create(140, 185, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
                with (instance_create(155, 185, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
                with (instance_create(170, 185, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
                with (instance_create(185, 185, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
            }
            if (counter == 345)
            {
                global.soultype = 1
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 131
                    x2 = 195
                    y2 = 159
                }
            }
            if (counter == 360)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(125, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 70
                    yspeed = 10
                }
                with (instance_create(140, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 70
                    yspeed = 10
                }
                with (instance_create(155, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 70
                    yspeed = 10
                }
                with (instance_create(170, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 70
                    yspeed = 10
                }
                with (instance_create(185, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 70
                    yspeed = 10
                }
            }
            if (counter == 375)
                instance_create(x, y, obj_mbm_tele)
            if (counter == 404)
            {
                global.soultype = 0
                obj_evade_soul.x = 160
                obj_evade_soul.y = 160
                global.soulxposition = 160
                global.soulyposition = 160
            }
            if (counter == 405)
            {
                with (instance_create(120, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(105, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(90, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(75, 165, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(60, 160, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(45, 155, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(30, 155, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(15, 160, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(0, 165, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-15, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-30, 175, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-45, 185, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-105, 185, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-120, 180, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-135, 175, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-150, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-165, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-180, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(120, 50, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(105, 50, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(90, 50, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(75, 45, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(60, 40, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(45, 35, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(30, 35, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(15, 40, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(0, 45, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-15, 50, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-30, 55, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-45, 65, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-60, 70, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-75, 75, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-90, 70, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-105, 65, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-120, 60, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-135, 55, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-150, 50, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-165, 50, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-180, 50, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
            }
            if (counter == 485)
            {
                with (instance_create(-60, 160, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 80
                    gotoy = 160
                }
            }
        }
        if (sparemeter == 25)
        {
            global.evadetime = 560
            if (counter == 1)
            {
                global.soultype = 0
                with (instance_create(90, 165, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(75, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(60, 180, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(0, 180, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-15, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-30, 160, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-45, 155, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-60, 155, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-75, 145, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(90, 45, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(75, 50, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(60, 60, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(45, 70, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(30, 80, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(15, 70, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(0, 60, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-15, 50, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-30, 40, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-45, 35, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-60, 35, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-75, 45, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 4
                }
            }
            if (counter == 60)
                instance_create(x, y, obj_mbm_tele)
            if (counter == 89)
            {
                obj_evade_soul.x = 160
                obj_evade_soul.y = 160
                global.soulxposition = 160
                global.soulyposition = 160
            }
            if (counter == 95)
            {
                with (instance_create(-30, 160, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 90
                    gotoy = 160
                }
                with (instance_create(350, 160, obj_frontier_justice))
                {
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 230
                    gotoy = 160
                }
            }
            if (counter == 120)
                instance_create(x, y, obj_mbm_tele)
            if (counter == 149)
            {
                global.soultype = 0
                obj_evade_soul.x = 160
                obj_evade_soul.y = 160
                global.soulxposition = 160
                global.soulyposition = 160
            }
            if (counter == 150)
            {
                with (instance_create(55, 105, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(55, 90, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(55, 75, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(50, 60, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(50, 45, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(45, 30, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(45, 15, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(40, 0, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(40, -15, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(35, -30, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(30, -45, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(30, -60, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(35, -75, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(40, -90, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(45, -105, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(50, -120, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(60, -135, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(65, -150, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(75, -165, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(80, -180, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(80, -195, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(80, -210, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(80, -225, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(85, -240, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(185, 105, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(185, 90, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(185, 75, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(175, 60, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(175, 45, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(170, 30, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(170, 15, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(165, 0, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(160, -15, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(155, -30, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(150, -45, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(150, -60, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(155, -75, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(155, -90, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(160, -105, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(165, -120, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(175, -135, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(180, -150, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(190, -165, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(195, -180, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(195, -195, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(195, -210, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(195, -225, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(190, -240, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 1
                }
            }
            if (counter == 230)
                instance_create(x, y, obj_mbm_tele)
            if (counter == 259)
            {
                global.soultype = 1
                obj_evade_soul.x = 160
                obj_evade_soul.y = 160
                global.soulxposition = 160
                global.soulyposition = 160
                with (instance_create(135, 170, obj_dell_platform))
                    spd = 0
                with (instance_create(185, 170, obj_dell_platform))
                    spd = 0
            }
            if (counter == 280)
            {
                global.soultype = 1
                with (instance_create(-30, 180, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 15
                    gotox = 90
                    gotoy = 180
                }
                with (instance_create(350, 180, obj_frontier_justice))
                {
                    damagedone = other.enemyattack
                    spd = 15
                    gotox = 230
                    gotoy = 180
                }
            }
            if (counter == 310)
                instance_create(x, y, obj_mbm_tele)
            if (counter == 339)
            {
                global.soultype = 1
                obj_evade_soul.x = 160
                obj_evade_soul.y = 160
                global.soulxposition = 160
                global.soulyposition = 160
                with (instance_create(160, 170, obj_dell_platform))
                    spd = 0
            }
            if (counter == 360)
            {
                global.soultype = 1
                with (instance_create(65, 285, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 0
                    movedirection = 2
                }
                with (instance_create(155, 410, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 5
                    leftorright = 1
                    movedirection = 2
                }
            }
            if (counter == 430)
                instance_create(x, y, obj_mbm_tele)
            if (counter == 459)
            {
                global.soultype = 1
                obj_evade_soul.x = 160
                obj_evade_soul.y = 160
                global.soulxposition = 160
                global.soulyposition = 160
                with (instance_create(160, 170, obj_dell_platform))
                    spd = 0
            }
            if (counter == 485)
            {
                with (instance_create(-30, 150, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 10
                    gotox = 90
                    gotoy = 150
                }
                with (instance_create(350, 150, obj_frontier_justice))
                {
                    damagedone = other.enemyattack
                    spd = 10
                    gotox = 230
                    gotoy = 150
                }
            }
            if (counter == 515)
            {
                with (instance_create(-30, 185, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 10
                    gotox = 90
                    gotoy = 185
                }
                with (instance_create(350, 185, obj_frontier_justice))
                {
                    damagedone = other.enemyattack
                    spd = 10
                    gotox = 230
                    gotoy = 185
                }
            }
        }
        if (sparemeter == 20)
        {
            global.evadetime = 280
            global.soultype = 1
            if (counter == 1)
            {
                with (instance_create(25, 70, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(-75, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(-175, 70, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(-275, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(-375, 70, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(-475, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(-575, 70, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 1
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(-675, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(285, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(385, 70, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(485, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(585, 70, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(685, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(785, 70, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(885, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 3
                    damagedone = other.enemyattack
                }
                with (instance_create(985, 70, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 3
                    damagedone = other.enemyattack
                }
            }
        }
        if (sparemeter == 15)
        {
            global.soultype = 0
            global.evadetime = 280
            if (counter == 1)
            {
                with (instance_create(360, -25, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 240
                    gotoy = 90
                }
            }
            if (counter == 30)
            {
                with (instance_create(45, 270, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 100
                    gotoy = 215
                }
            }
            if (counter == 60)
            {
                with (instance_create(-30, 160, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 55
                    gotoy = 160
                }
            }
            if (counter == 90)
            {
                with (instance_create(-30, -35, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 90
                    gotoy = 85
                }
            }
            if (counter == 120)
            {
                with (instance_create(160, -35, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 160
                    gotoy = 85
                }
                with (instance_create(10, 265, obj_frontier_justice))
                {
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 90
                    gotoy = 185
                }
            }
            if (counter == 150)
            {
                with (instance_create(130, -35, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 130
                    gotoy = 85
                }
                with (instance_create(190, -35, obj_frontier_justice))
                {
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 190
                    gotoy = 85
                }
            }
            if (counter == 180)
            {
                with (instance_create(-30, 185, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 40
                    gotoy = 185
                }
                with (instance_create(350, 135, obj_frontier_justice))
                {
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 280
                    gotoy = 135
                }
            }
            if (counter == 210)
            {
                with (instance_create(160, -55, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 160
                    gotoy = 65
                    image_xscale = 2
                    image_yscale = 2
                }
            }
            if (counter == 240)
            {
                with (instance_create(355, 230, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 280
                    gotoy = 195
                }
            }
        }
        if (sparemeter == 10)
        {
            global.soultype = 0
            global.evadetime = 310
            if (counter == 25)
            {
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 131
                    x2 = 180
                    y2 = 188
                }
            }
            if (counter == 40)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(20, 130, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 0
                    movetox = 80
                    xspeed = 10
                }
                with (instance_create(20, 145, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 0
                    movetox = 80
                    xspeed = 10
                }
                with (instance_create(20, 160, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 0
                    movetox = 80
                    xspeed = 10
                }
                with (instance_create(20, 175, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 0
                    movetox = 80
                    xspeed = 10
                }
            }
            if (counter == 60)
            {
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 131
                    x2 = 195
                    y2 = 180
                }
            }
            if (counter == 75)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(125, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 80
                    yspeed = 10
                }
                with (instance_create(140, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 80
                    yspeed = 10
                }
                with (instance_create(155, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 80
                    yspeed = 10
                }
                with (instance_create(170, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 80
                    yspeed = 10
                }
                with (instance_create(185, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 80
                    yspeed = 10
                }
            }
            if (counter == 110)
            {
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 150
                    x2 = 195
                    y2 = 188
                }
            }
            if (counter == 125)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(125, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 145
                    yspeed = 10
                }
                with (instance_create(140, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 145
                    yspeed = 10
                }
                with (instance_create(155, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 145
                    yspeed = 10
                }
                with (instance_create(170, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 145
                    yspeed = 10
                }
                with (instance_create(185, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 145
                    yspeed = 10
                }
            }
            if (counter == 145)
            {
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 139
                    y1 = 131
                    x2 = 195
                    y2 = 188
                }
            }
            if (counter == 160)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(200, 130, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 140
                    xspeed = 10
                }
                with (instance_create(200, 145, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 140
                    xspeed = 10
                }
                with (instance_create(200, 160, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 140
                    xspeed = 10
                }
                with (instance_create(200, 175, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 140
                    xspeed = 10
                }
            }
            if (counter == 170)
            {
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 131
                    x2 = 195
                    y2 = 154
                }
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 166
                    x2 = 195
                    y2 = 188
                }
            }
            if (counter == 185)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(125, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
                with (instance_create(140, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
                with (instance_create(155, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
                with (instance_create(170, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
                with (instance_create(185, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(125, 25, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 55
                    yspeed = 10
                }
                with (instance_create(140, 25, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 55
                    yspeed = 10
                }
                with (instance_create(155, 25, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 55
                    yspeed = 10
                }
                with (instance_create(170, 25, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 55
                    yspeed = 10
                }
                with (instance_create(185, 25, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 55
                    yspeed = 10
                }
            }
            if (counter == 205)
            {
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 160
                    x2 = 195
                    y2 = 188
                }
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 160
                    y1 = 131
                    x2 = 195
                    y2 = 188
                }
            }
            if (counter == 220)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(125, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 160
                    yspeed = 10
                }
                with (instance_create(140, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 160
                    yspeed = 10
                }
                with (instance_create(155, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 160
                    yspeed = 10
                }
                with (instance_create(170, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 160
                    yspeed = 10
                }
                with (instance_create(185, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 160
                    yspeed = 10
                }
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(200, 130, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 160
                    xspeed = 10
                }
                with (instance_create(200, 145, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 160
                    xspeed = 10
                }
                with (instance_create(200, 160, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 160
                    xspeed = 10
                }
                with (instance_create(200, 175, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 160
                    xspeed = 10
                }
            }
            if (counter == 240)
            {
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 131
                    x2 = 195
                    y2 = 159
                }
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 131
                    x2 = 159
                    y2 = 188
                }
            }
            if (counter == 255)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(20, 130, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 0
                    movetox = 60
                    xspeed = 10
                }
                with (instance_create(20, 145, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 0
                    movetox = 60
                    xspeed = 10
                }
                with (instance_create(20, 160, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 0
                    movetox = 60
                    xspeed = 10
                }
                with (instance_create(20, 175, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 0
                    movetox = 60
                    xspeed = 10
                }
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(125, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 60
                    yspeed = 10
                }
                with (instance_create(140, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 60
                    yspeed = 10
                }
                with (instance_create(155, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 60
                    yspeed = 10
                }
                with (instance_create(170, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 60
                    yspeed = 10
                }
                with (instance_create(185, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 60
                    yspeed = 10
                }
            }
            if (counter == 275)
            {
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 131
                    x2 = 149
                    y2 = 188
                }
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 131
                    x2 = 195
                    y2 = 150
                }
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 170
                    x2 = 195
                    y2 = 188
                }
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 170
                    y1 = 131
                    x2 = 195
                    y2 = 188
                }
            }
            if (counter == 290)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(20, 130, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 0
                    movetox = 50
                    xspeed = 10
                }
                with (instance_create(20, 145, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 0
                    movetox = 50
                    xspeed = 10
                }
                with (instance_create(20, 160, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 0
                    movetox = 50
                    xspeed = 10
                }
                with (instance_create(20, 175, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 0
                    movetox = 50
                    xspeed = 10
                }
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(125, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 50
                    yspeed = 10
                }
                with (instance_create(140, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 50
                    yspeed = 10
                }
                with (instance_create(155, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 50
                    yspeed = 10
                }
                with (instance_create(170, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 50
                    yspeed = 10
                }
                with (instance_create(185, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 50
                    yspeed = 10
                }
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(125, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
                with (instance_create(140, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
                with (instance_create(155, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
                with (instance_create(170, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
                with (instance_create(185, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 165
                    yspeed = 10
                }
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(200, 130, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 170
                    xspeed = 10
                }
                with (instance_create(200, 145, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 170
                    xspeed = 10
                }
                with (instance_create(200, 160, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 170
                    xspeed = 10
                }
                with (instance_create(200, 175, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 170
                    xspeed = 10
                }
            }
        }
        if (sparemeter == 5)
        {
            global.evadetime = 1600
            if (counter == 1)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 1
            }
            if (counter == 10)
            {
                global.soultype = 0
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 178
                    y1 = 131
                    x2 = 195
                    y2 = 188
                }
            }
            if (counter == 20)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(200, 130, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 180
                    xspeed = 10
                }
                with (instance_create(200, 145, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 180
                    xspeed = 10
                }
                with (instance_create(200, 160, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 180
                    xspeed = 10
                }
                with (instance_create(200, 175, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 180
                    xspeed = 10
                }
            }
            if (counter == 30)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 0
            }
            if (counter == 40)
            {
                global.soultype = 0
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 170
                    x2 = 195
                    y2 = 188
                }
            }
            if (counter == 55)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(125, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 175
                    yspeed = 10
                }
                with (instance_create(140, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 175
                    yspeed = 10
                }
                with (instance_create(155, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 175
                    yspeed = 10
                }
                with (instance_create(170, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 175
                    yspeed = 10
                }
                with (instance_create(185, 195, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movetoy = 175
                    yspeed = 10
                }
            }
            if (counter == 65)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 2
            }
            if (counter == 75)
            {
                global.soultype = 0
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 131
                    x2 = 195
                    y2 = 150
                }
            }
            if (counter == 85)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(125, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 45
                    yspeed = 10
                }
                with (instance_create(140, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 45
                    yspeed = 10
                }
                with (instance_create(155, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 45
                    yspeed = 10
                }
                with (instance_create(170, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 45
                    yspeed = 10
                }
                with (instance_create(185, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 45
                    yspeed = 10
                }
            }
            if (counter == 110)
            {
                global.soultype = 1
                with (instance_create(260, 165, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 4
                }
                with (instance_create(-85, 165, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
            }
            if (counter == 180)
            {
                global.soultype = 0
                with (instance_create(65, 70, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 4
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(155, 0, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 4
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(65, -70, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 4
                    leftorright = 0
                    movedirection = 1
                }
                with (instance_create(155, -140, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 4
                    leftorright = 1
                    movedirection = 1
                }
                with (instance_create(65, -210, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    spd = 4
                    leftorright = 0
                    movedirection = 1
                }
            }
            if (counter == 270)
            {
                with (instance_create(20, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(5, 155, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
                with (instance_create(-10, 140, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 1
                    spd = 4
                }
            }
            if (counter == 275)
            {
                with (instance_create(425, 55, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 4
                }
                with (instance_create(440, 70, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 4
                }
                with (instance_create(455, 85, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 4
                }
            }
            if (counter == 360)
            {
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 124
                    y1 = 131
                    x2 = 138
                    y2 = 188
                }
            }
            if (counter == 370)
            {
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 138
                    y1 = 131
                    x2 = 152
                    y2 = 188
                }
            }
            if (counter == 375)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(125, 35, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 90
                    yspeed = 20
                }
            }
            if (counter == 380)
            {
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 152
                    y1 = 131
                    x2 = 167
                    y2 = 188
                }
            }
            if (counter == 385)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(140, 35, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 90
                    yspeed = 20
                }
            }
            if (counter == 390)
            {
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 167
                    y1 = 131
                    x2 = 181
                    y2 = 188
                }
            }
            if (counter == 395)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(155, 35, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 90
                    yspeed = 20
                }
            }
            if (counter == 405)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(170, 35, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movetoy = 90
                    yspeed = 20
                }
            }
            if (counter == 420)
            {
                with (instance_create(190, -30, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    spd = 20
                    gotox = 190
                    gotoy = 95
                }
            }
            if (counter == 460)
                instance_create(x, y, obj_mbm_tele)
            if (counter == 489)
            {
                global.soultype = 0
                obj_evade_soul.x = 160
                obj_evade_soul.y = 160
                global.soulxposition = 160
                global.soulyposition = 160
                heads = 0
            }
            if (counter == 500)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 3
            }
            if (counter == 510)
            {
                global.soultype = 0
                with (instance_create(245, 165, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(275, 165, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(305, 160, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(335, 155, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(365, 150, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(395, 145, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(425, 140, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(455, 135, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(485, 135, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(515, 145, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(545, 160, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(575, 175, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(755, 190, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(785, 180, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(815, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(845, 160, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(875, 150, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(905, 150, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(935, 150, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(965, 150, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(995, 165, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1025, 165, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1265, 185, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1295, 170, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1325, 165, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1355, 160, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1385, 155, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1415, 150, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1445, 145, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1475, 140, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1505, 135, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1535, 135, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1565, 145, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1595, 160, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1625, 175, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1655, 175, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 0
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(245, 50, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(275, 50, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(305, 45, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(335, 40, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(365, 35, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(545, 40, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(575, 55, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(605, 65, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(635, 80, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(665, 85, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(695, 85, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(725, 75, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(755, 65, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(785, 55, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(815, 45, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(995, 35, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1025, 50, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1055, 65, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1085, 75, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1115, 85, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1145, 85, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1175, 85, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1205, 85, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1235, 75, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1265, 65, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1295, 50, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1325, 45, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1355, 40, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1385, 35, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1415, 30, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1595, 40, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1625, 55, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
                with (instance_create(1655, 55, obj_dell_wrench))
                {
                    damagedone = other.enemyattack
                    bottomortop = 1
                    movedirection = 2
                    spd = 6
                }
            }
            if (counter == 795)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 1
            }
            if (counter == 805)
            {
                global.soultype = 0
                with (instance_create(0, 0, obj_dell_box))
                {
                    x1 = 178
                    y1 = 131
                    x2 = 195
                    y2 = 188
                }
            }
            if (counter == 820)
            {
                audio_play_sound(snd_sword2, 1, false)
                with (instance_create(200, 130, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 180
                    xspeed = 10
                }
                with (instance_create(200, 145, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 180
                    xspeed = 10
                }
                with (instance_create(200, 160, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 180
                    xspeed = 10
                }
                with (instance_create(200, 175, obj_dell_sidewrench))
                {
                    damagedone = other.enemyattack
                    leftorright = 1
                    movetox = 180
                    xspeed = 10
                }
            }
            if (counter == 860)
            {
                with (instance_create(160, 85, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 865)
            {
                with (instance_create(190, 95, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 870)
            {
                with (instance_create(215, 110, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 875)
            {
                with (instance_create(230, 130, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 880)
            {
                with (instance_create(235, 160, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 885)
            {
                with (instance_create(230, 190, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 890)
            {
                with (instance_create(220, 210, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 895)
            {
                with (instance_create(190, 225, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 900)
            {
                with (instance_create(160, 235, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 905)
            {
                with (instance_create(130, 225, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 910)
            {
                with (instance_create(100, 210, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 915)
            {
                with (instance_create(90, 185, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 920)
            {
                with (instance_create(85, 160, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 925)
            {
                with (instance_create(90, 130, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 930)
            {
                with (instance_create(105, 110, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 935)
            {
                with (instance_create(125, 95, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 940)
            {
                with (instance_create(160, 85, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 945)
            {
                with (instance_create(190, 95, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 950)
            {
                with (instance_create(215, 110, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 955)
            {
                with (instance_create(230, 130, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 960)
            {
                with (instance_create(235, 160, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 965)
            {
                with (instance_create(230, 190, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 970)
            {
                with (instance_create(220, 210, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 975)
            {
                with (instance_create(190, 225, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 980)
            {
                with (instance_create(160, 235, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 985)
            {
                with (instance_create(130, 225, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 990)
            {
                with (instance_create(100, 210, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 995)
            {
                with (instance_create(90, 185, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 1000)
            {
                with (instance_create(85, 160, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 1005)
            {
                with (instance_create(90, 130, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 1010)
            {
                with (instance_create(105, 110, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 1015)
            {
                with (instance_create(125, 95, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 1020)
            {
                with (instance_create(160, 85, obj_frontier_justice))
                {
                    playsound = 1
                    damagedone = other.enemyattack
                    fadein = 1
                    image_alpha = 0
                }
            }
            if (counter == 1060)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 3
            }
            if (counter == 1075)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 1
            }
            if (counter == 1080)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 2
            }
            if (counter == 1090)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 0
            }
            if (counter == 1100)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 2
            }
            if (counter == 1102)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 3
            }
            if (counter == 1115)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 1
            }
            if (counter == 1120)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 0
            }
            if (counter == 1125)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 2
            }
            if (counter == 1127)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 3
            }
            if (counter == 1135)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 1
            }
            if (counter == 1150)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 3
            }
            if (counter == 1155)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 2
            }
            if (counter == 1163)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 0
            }
            if (counter == 1167)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 3
            }
            if (counter == 1175)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 1
            }
            if (counter == 1180)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 2
            }
            if (counter == 1190)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 0
            }
            if (counter == 1200)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 2
            }
            if (counter == 1210)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 0
            }
            if (counter == 1215)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 3
            }
            if (counter == 1228)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 1
            }
            if (counter == 1230)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 2
            }
            if (counter == 1240)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 0
            }
            if (counter == 1250)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 2
            }
            if (counter == 1255)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 1
            }
            if (counter == 1265)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 3
            }
            if (counter == 1280)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 1
            }
            if (counter == 1295)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 3
            }
            if (counter == 1300)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 2
            }
            if (counter == 1310)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 0
            }
            if (counter == 1320)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 2
            }
            if (counter == 1340)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 0
            }
            if (counter == 1360)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 2
            }
            if (counter == 1390)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 0
            }
            if (counter == 1430)
            {
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 2
            }
            if (counter == 1480)
            {
                exhausted = 1
                animprog = 0
                extray = 0
                with (instance_create(x, y, obj_dell_handattack))
                    handdirection = 0
            }
            if (counter == 1490)
                global.soultype = 1
            if (counter == 1495)
                instance_create(0, 0, obj_dell_phasethree)
        }
    }
}
if (exhausted == 0)
{
    if (animprog == 0)
    {
        if (extrax > -1)
            extrax -= 0.2
        if (extray > -1)
            extray -= 0.2
        if (extrax == -1 && extray == -1)
            animprog = 1
    }
    if (animprog == 1)
    {
        if (extrax > -2)
            extrax -= 0.2
        if (extray < 0)
            extray += 0.2
        if (extrax == -2 && extray == 0)
            animprog = 2
    }
    if (animprog == 2)
    {
        if (extrax < -1)
            extrax += 0.2
        if (extray < 1)
            extray += 0.2
        if (extrax == -1 && extray == 1)
            animprog = 3
    }
    if (animprog == 3)
    {
        if (extrax < 0)
            extrax += 0.2
        if (extray > 0)
            extray -= 0.2
        if (extrax == 0 && extray == 0)
            animprog = 4
    }
    if (animprog == 4)
    {
        if (extrax < 1)
            extrax += 0.2
        if (extray > -1)
            extray -= 0.2
        if (extrax == 1 && extray == -1)
            animprog = 5
    }
    if (animprog == 5)
    {
        if (extrax < 2)
            extrax += 0.2
        if (extray < 0)
            extray += 0.2
        if (extrax == 2 && extray == 0)
            animprog = 6
    }
    if (animprog == 6)
    {
        if (extrax > 1)
            extrax -= 0.2
        if (extray < 1)
            extray += 0.2
        if (extrax == 1 && extray == 1)
            animprog = 7
    }
    if (animprog == 7)
    {
        if (extrax > 0)
            extrax -= 0.2
        if (extray > 0)
            extray -= 0.2
        if (extrax == 0 && extray == 0)
            animprog = 0
    }
}
else
{
    if (animprog == 0)
    {
        if (extray < 1)
            extray += 0.25
        else
            animprog = 1
    }
    if (animprog == 1)
    {
        if (extray < 1.6)
            extray += 0.05
        else
            animprog = 2
    }
    if (animprog == 2)
    {
        if (extray < 1.8)
            extray += 0.025
        else
            animprog = 3
    }
    if (animprog == 3)
    {
        if (extray < 1.9)
            extray += 0.01
        else
            animprog = 4
    }
    if (animprog == 4)
    {
        if (extray > 1.8)
            extray -= 0.01
        else
            animprog = 5
    }
    if (animprog == 5)
    {
        if (extray > 1.6)
            extray -= 0.025
        else
            animprog = 6
    }
    if (animprog == 6)
    {
        if (extray > 1)
            extray -= 0.05
        else
            animprog = 7
    }
    if (animprog == 7)
    {
        if (extray > 0.6)
            extray -= 0.25
        else
            animprog = 8
    }
    if (animprog == 8)
    {
        if (extray > 0.4)
            extray -= 0.01
        else
            animprog = 9
    }
    if (animprog == 9)
    {
        if (extray > 0.2)
            extray -= 0.025
        else
            animprog = 10
    }
    if (animprog == 10)
    {
        if (extray > 0.1)
            extray -= 0.05
        else
            animprog = 11
    }
    if (animprog == 11)
    {
        if (extray < 0.2)
            extray += 0.05
        else
            animprog = 12
    }
    if (animprog == 12)
    {
        if (extray < 0.4)
            extray += 0.025
        else
            animprog = 13
    }
    if (animprog == 13)
    {
        if (extray < 0.6)
            extray += 0.01
        else
            animprog = 0
    }
}
scr_enemy_names()
scr_enemy_death_transparency()
if (!instance_exists(obj_dell_phasethree))
{
    if (place_meeting(x, y, obj_actwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
    {
        with (instance_position(x, y, obj_actwave))
            instance_destroy()
        alarm[5] = 1
    }
    if (place_meeting(x, y, obj_fightwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
    {
        with (instance_position(x, y, obj_fightwave))
            instance_destroy()
        alarm[5] = 30
        if (phasetwo == 0)
        {
            if (meterdown == 0)
            {
                meterdown = 1
                if (sparemeter > 5)
                    sparemeter -= 5
                else if (phasetwoinitiated == 0)
                {
                    phasetwoinitiated = 1
                    alarm[2] = 5
                }
            }
        }
        else if (phasetwo == 1)
        {
            if (meterdown == 0)
            {
                meterdown = 1
                if (sparemeter > 5)
                    sparemeter -= 5
                else
                    sparemeter = 5
            }
        }
    }
    if (place_meeting(x, y, obj_itemwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
    {
        with (instance_position(x, y, obj_itemwave))
            instance_destroy()
        alarm[5] = 1
    }
    if (place_meeting(x, y, obj_sparewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
    {
        with (instance_position(x, y, obj_sparewave))
            instance_destroy()
        if (sparingyou == 1 && phasetwo == 0)
            sparemeter = 0
        alarm[5] = 1
    }
    if (global.flee == 0 && place_meeting(x, y, obj_fleewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
    {
        with (instance_position(x, y, obj_fleewave))
            instance_destroy()
        alarm[5] = 1
    }
}
if (phasetwo == 1)
{
    if (global.battlemenuoffline == 0)
    {
        if (!instance_exists(obj_dell_extrasoul))
            instance_create(24, 226, obj_dell_extrasoul)
        if (!instance_exists(obj_dell_wrenchfight))
            instance_create(-5, 140, obj_dell_wrenchfight)
        if (instance_number(obj_dell_wrenchloop) < 4)
        {
            instance_create(80, 225, obj_dell_wrenchloop)
            instance_create(155, 255, obj_dell_wrenchloop)
            instance_create(235, 225, obj_dell_wrenchloop)
            instance_create(310, 255, obj_dell_wrenchloop)
        }
    }
    else
    {
        with (obj_dell_extrasoul)
            instance_destroy()
        if (!instance_exists(obj_dell_wrenchfight))
        {
            with (obj_dell_wrenchfight)
                deletethis = 1
        }
        if (!instance_exists(obj_dell_wrenchloop))
        {
            with (obj_dell_wrenchloop)
                deletethis = 1
        }
    }
}
if (phasetwo == 0)
{
    if instance_exists(obj_speech_bubble)
    {
        if (sparemeter == 30)
        {
            if (obj_speech_bubble.N == 0)
                heads = 1
        }
        if (sparemeter == 25)
        {
            if (obj_speech_bubble.N == 0)
                heads = 0
            if (obj_speech_bubble.N == 1)
                heads = 1
        }
        if (sparemeter == 15)
        {
            if (obj_speech_bubble.N == 1)
                heads = 5
            if (obj_speech_bubble.N == 2)
                heads = 0
        }
        if (sparemeter == 10)
        {
            if (obj_speech_bubble.N == 0)
                heads = 5
            if (obj_speech_bubble.N == 1)
                heads = 0
            if (obj_speech_bubble.N == 2)
                heads = 7
        }
        if (sparemeter == 5)
        {
            if (obj_speech_bubble.N == 0)
                heads = 4
            if (obj_speech_bubble.N == 1)
                heads = 2
            if (obj_speech_bubble.N == 2)
                heads = 9
            if (obj_speech_bubble.N == 3)
                heads = 10
            if (obj_speech_bubble.N == 4)
                heads = 0
            if (obj_speech_bubble.N == 5)
                heads = 5
            if (obj_speech_bubble.N == 6)
                heads = 0
            if (obj_speech_bubble.N == 7)
                heads = 2
            if (obj_speech_bubble.N == 8)
                heads = 5
            if (obj_speech_bubble.N == 9)
                heads = 0
            if (obj_speech_bubble.N == 10)
                heads = 4
            if (obj_speech_bubble.N == 11)
                heads = 0
            if (obj_speech_bubble.N == 12)
                heads = 0
        }
    }
    else if (!instance_exists(obj_evade_ground))
        heads = 0
}
if (phasetwo == 1 && (!instance_exists(obj_dell_phasethree)))
{
    if instance_exists(obj_speech_bubble)
    {
        if (sparemeter == 35)
        {
            if (obj_speech_bubble.N == 0)
                heads = 3
        }
        if (sparemeter == 30)
        {
            if (obj_speech_bubble.N == 1)
                heads = 1
            if (obj_speech_bubble.N == 2)
                heads = 0
        }
        if (sparemeter == 25)
        {
            if (obj_speech_bubble.N == 1)
                heads = 5
            if (obj_speech_bubble.N == 2)
                heads = 4
            if (obj_speech_bubble.N == 2)
                heads = 0
            if (obj_speech_bubble.N == 5)
                heads = 7
        }
        if (sparemeter == 10)
        {
            if (obj_speech_bubble.N == 0)
                heads = 4
            if (obj_speech_bubble.N == 1)
                heads = 5
            if (obj_speech_bubble.N == 2)
                heads = 6
        }
        if (sparemeter == 5)
        {
            if (obj_speech_bubble.N == 0)
                heads = 3
        }
    }
    else if (!instance_exists(obj_evade_ground))
        heads = 0
}
__b__ = action_if_object(101, 0, 0)
if (!__b__)
{
    __b__ = action_if_object(100, 0, 0)
    if (!__b__)
    {
        __b__ = action_if_object(112, 0, 0)
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
                        STR[0] = "* You tell a bad pun.#* Dell seems to have heard#  it before."
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
                        STR[0] = "* You throw every insult you#  know at Dell.#* Not sure if he's listening."
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
                        STR[0] = "* You turn around to flee,#  but Dell is already#  standing there."
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

