counter += 1
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
    with (instance_create(x, y, obj_dell_handattack))
        handdirection = 0
}
if (counter == 1490)
    global.soultype = 1

