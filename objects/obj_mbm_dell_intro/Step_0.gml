if (progress == 1 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 2
    audio_play_sound(snd_step, 1, false)
    alarm[1] = 15
    with (obj_music_player)
        instance_destroy()
}
if (progress == 3 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 4
    heads = 7
    global.evadetime = 900
    instance_create(0, 0, obj_evade_ground)
    instance_create(global.soulxposition, global.soulyposition, obj_evade_soul)
    audio_play_sound(snd_flamewave, 1, false)
    with (instance_create(x, y, obj_dell_handattack))
        handdirection = 0
    if instance_exists(obj_music_player)
    {
        with (obj_music_player)
            instance_destroy()
    }
}
if (progress == 4)
{
    countup += 1
    if (countup == 15)
    {
        global.soultype = 1
        with (instance_create(0, 0, obj_dell_box))
        {
            x1 = 141
            y1 = 131
            x2 = 180
            y2 = 175
        }
    }
    if (countup == 30)
    {
        audio_play_sound(snd_sword2, 1, false)
        with (instance_create(140, 30, obj_dell_wrench))
        {
            damagedone = other.damagedone
            bottomortop = 1
            movetoy = 80
            yspeed = 10
        }
        with (instance_create(155, 30, obj_dell_wrench))
        {
            damagedone = other.damagedone
            bottomortop = 1
            movetoy = 80
            yspeed = 10
        }
        with (instance_create(170, 30, obj_dell_wrench))
        {
            damagedone = other.damagedone
            bottomortop = 1
            movetoy = 80
            yspeed = 10
        }
    }
    if (countup == 60)
    {
        global.soultype = 0
        with (instance_create(50, 115, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(50, 100, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(50, 85, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(55, 70, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(60, 55, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(65, 40, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(70, 25, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(75, 10, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(80, -5, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(85, -20, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(85, -35, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(85, -50, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(80, -65, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(75, -80, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(70, -95, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(65, -110, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(60, -125, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(55, -140, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(50, -155, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(50, -170, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(50, -185, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 0
            movedirection = 1
        }
        with (instance_create(170, 115, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(170, 100, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(170, 85, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(175, 70, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(180, 55, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(185, 40, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(190, 25, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(195, 10, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(200, -5, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(205, -20, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(205, -35, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(205, -50, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(200, -65, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(195, -80, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(190, -95, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(185, -110, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(180, -125, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(175, -140, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(170, -155, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(170, -170, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
        with (instance_create(170, -185, obj_dell_sidewrench))
        {
            damagedone = other.damagedone
            spd = 5
            leftorright = 1
            movedirection = 1
        }
    }
    if (countup == 140)
    {
        with (instance_create(-30, 135, obj_frontier_justice))
        {
            playsound = 1
            damagedone = other.damagedone
            spd = 20
            gotox = 90
            gotoy = 135
        }
        with (instance_create(-30, 190, obj_frontier_justice))
        {
            damagedone = other.damagedone
            spd = 20
            gotox = 90
            gotoy = 190
        }
        with (instance_create(350, 135, obj_frontier_justice))
        {
            damagedone = other.damagedone
            spd = 20
            gotox = 230
            gotoy = 135
        }
        with (instance_create(350, 190, obj_frontier_justice))
        {
            damagedone = other.damagedone
            spd = 20
            gotox = 230
            gotoy = 190
        }
    }
    if (countup == 180)
    {
        with (instance_create(-20, -20, obj_frontier_justice))
        {
            playsound = 1
            damagedone = other.damagedone
            spd = 20
            gotox = 95
            gotoy = 100
        }
        with (instance_create(-20, 340, obj_frontier_justice))
        {
            damagedone = other.damagedone
            spd = 20
            gotox = 95
            gotoy = 220
        }
        with (instance_create(340, -20, obj_frontier_justice))
        {
            damagedone = other.damagedone
            spd = 20
            gotox = 225
            gotoy = 100
        }
        with (instance_create(340, 340, obj_frontier_justice))
        {
            damagedone = other.damagedone
            spd = 20
            gotox = 225
            gotoy = 220
        }
    }
    if (countup == 220)
    {
        with (instance_create(-30, 140, obj_frontier_justice))
        {
            playsound = 1
            damagedone = other.damagedone
            spd = 20
            gotox = 90
            gotoy = 140
        }
        with (instance_create(-30, 180, obj_frontier_justice))
        {
            damagedone = other.damagedone
            spd = 20
            gotox = 90
            gotoy = 180
        }
        with (instance_create(135, 375, obj_frontier_justice))
        {
            damagedone = other.damagedone
            spd = 20
            gotox = 135
            gotoy = 225
        }
        with (instance_create(190, 375, obj_frontier_justice))
        {
            damagedone = other.damagedone
            spd = 20
            gotox = 190
            gotoy = 225
        }
        with (instance_create(350, 180, obj_frontier_justice))
        {
            damagedone = other.damagedone
            spd = 20
            gotox = 230
            gotoy = 180
        }
        with (instance_create(350, 140, obj_frontier_justice))
        {
            damagedone = other.damagedone
            spd = 20
            gotox = 230
            gotoy = 140
        }
        with (instance_create(135, -30, obj_frontier_justice))
        {
            damagedone = other.damagedone
            spd = 25
            gotox = 135
            gotoy = 90
        }
        with (instance_create(185, -30, obj_frontier_justice))
        {
            damagedone = other.damagedone
            spd = 25
            gotox = 190
            gotoy = 90
        }
    }
    if (countup == 260)
    {
        with (instance_create(160, -60, obj_frontier_justice))
        {
            playsound = 1
            damagedone = other.damagedone
            spd = 20
            gotox = 160
            gotoy = 60
            image_xscale = 2
            image_yscale = 2
        }
    }
    if (countup == 300)
    {
        with (instance_create(-60, 160, obj_frontier_justice))
        {
            playsound = 1
            damagedone = other.damagedone
            spd = 20
            gotox = 60
            gotoy = 160
            image_xscale = 2
            image_yscale = 2
        }
        with (instance_create(380, 160, obj_frontier_justice))
        {
            damagedone = other.damagedone
            spd = 20
            gotox = 260
            gotoy = 160
            image_xscale = 2
            image_yscale = 2
        }
    }
    if (countup == 380)
    {
        heads = 0
        progress = 5
        with (instance_create(x, 0, obj_speech_bubble_noevade))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 85
            fontname = 10
            MAXSTR = 0
            if (global.delltimesdied == 0)
                STR[0] = "am i the only one#that uses their#strongest attack#first?"
            if (global.delltimesdied == 1)
                STR[0] = "as i was saying,#its a beautiful day#outside. shame you#wont enjoy it."
            if (global.delltimesdied > 1)
                STR[0] = "lets go."
        }
    }
}
if (progress == 5 && (!instance_exists(obj_speech_bubble_noevade)))
    room_goto(rm_mbm_dell_battle)
if instance_exists(obj_evade_soul)
{
    global.soulxposition = obj_evade_soul.x
    global.soulyposition = obj_evade_soul.y
}

