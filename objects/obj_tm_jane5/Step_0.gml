var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 4, 2)
if __b__
    action_kill_object()
else
{
    global.encountersdisabled = 1
    if (progress == 0 && distance_to_object(obj_protagonist) < 200)
    {
        instance_create(20, 150, obj_tm_wall_noreturn3)
        with (obj_music_player)
            musictrack = 124
        progress = 1
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = 1
            instance_destroy()
        }
    }
    if (progress == 1)
    {
        global.textboxtop = 1
        progress = 2
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 9
            textvoice = 86
            FACESTR[0] = 641
            STR[0] = "HELLO, INTRUDER!"
            FACESTR[1] = 644
            STR[1] = "I AM PROMOTING YOU#TO THE TITLE OF#ARCH-NEMESIS!"
            FACESTR[2] = 644
            STR[2] = "NO ONE WAS ABLE TO#STAND UP TO ME#LIKE YOU DID!"
            FACESTR[3] = 645
            STR[3] = "WELL, AT LEAST#NOT TODAY."
            FACESTR[4] = 644
            STR[4] = "BUT FOR NOW..."
            FACESTR[5] = 644
            STR[5] = "...YOU SHALL..."
            FACESTR[6] = 644
            STR[6] = "...SUFFER..."
            FACESTR[7] = 644
            STR[7] = "...DRAMATIC..."
            FACESTR[8] = 644
            STR[8] = "...PAUSES..."
            FACESTR[9] = 644
            STR[9] = "...AND ALSO THE#WORST OBSTACLE OF#THEM ALL!"
        }
    }
    if (progress == 2 && (!instance_exists(obj_text_box)))
    {
        progress = 3
        alarm[0] = 90
    }
    if (progress == 4 && (!instance_exists(obj_text_box)))
    {
        progress = 5
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 6
            textvoice = 86
            FACESTR[0] = 644
            STR[0] = "HAHA!"
            FACESTR[1] = 644
            STR[1] = "BOTH OF YOU FELL#INTO MY TRAP!"
            FACESTR[2] = 644
            STR[2] = "THE OBSTACLE..."
            FACESTR[3] = 641
            STR[3] = "...IS NOTHING!"
            FACESTR[4] = 644
            STR[4] = "BECAUSE I AM SO#SMART, I REALISED#THAT NOTHING"
            FACESTR[5] = 644
            STR[5] = "COULD STOP YOU!#SO PREPARE TO BE#FULLY STOPPED!"
            FACESTR[6] = 644
            STR[6] = "TRY ALL YOU WANT,#YOU CAN'T#GET TO ME!"
        }
    }
    if (progress == 5 && (!instance_exists(obj_text_box)))
    {
        progress = 6
        with (obj_pro_stopped)
            instance_destroy()
    }
    if (progress == 6 && distance_to_object(obj_protagonist) < 128)
    {
        progress = 7
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = obj_protagonist.prodirection
            instance_destroy()
        }
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 0
            textvoice = 85
            FACESTR[0] = 635
            STR[0] = "* it looks like it#  aint doing nothing,#  jane."
        }
    }
    if (progress == 7 && (!instance_exists(obj_text_box)))
    {
        progress = 8
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 2
            textvoice = 86
            FACESTR[0] = 643
            STR[0] = "DAMN IT!#I CAN SEE THAT!"
            FACESTR[1] = 643
            STR[1] = "DELL!#DO YOU HAVE#A BETTER PLAN?"
            FACESTR[2] = 646
            STR[2] = "BECAUSE I AM ALL#OUT OF IDEAS!"
        }
    }
    if (progress == 8 && (!instance_exists(obj_text_box)))
    {
        progress = 9
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 0
            textvoice = 85
            FACESTR[0] = 635
            STR[0] = "* why dont you just#  dig a trench?"
        }
    }
    if (progress == 9 && (!instance_exists(obj_text_box)))
    {
        progress = 10
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 0
            textvoice = 86
            FACESTR[0] = 643
            STR[0] = "A TRENCH?#WHY WOULD I DIG A#TRENCH?"
        }
    }
    if (progress == 10 && (!instance_exists(obj_text_box)))
    {
        progress = 11
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 0
            textvoice = 85
            FACESTR[0] = 636
            STR[0] = "* well, trenches#  are usually a#  last ditch effort."
        }
    }
    if (progress == 11 && (!instance_exists(obj_text_box)))
    {
        progress = 12
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 3
            textvoice = 86
            FACESTR[0] = 643
            STR[0] = "DELL!#YOU ARE#NOT HELPING!"
            FACESTR[1] = 641
            STR[1] = "AHA!#I HAVE AN IDEA!"
            FACESTR[2] = 644
            STR[2] = "INTRUDER, NO,#ARCH-NEMESIS!"
            FACESTR[3] = 644
            STR[3] = "WRITE YOUR#LAST WILL..."
        }
    }
    if (progress == 12 && (!instance_exists(obj_text_box)))
    {
        progress = 13
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 0
            textvoice = 85
            FACESTR[0] = 636
            STR[0] = "* yeah, will you do#  that please?"
        }
    }
    if (progress == 13 && (!instance_exists(obj_text_box)))
    {
        progress = 14
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 1
            textvoice = 86
            FACESTR[0] = 643
            STR[0] = "DELL!"
            FACESTR[1] = 644
            STR[1] = "...AND PREPARE#FOR IMPENDING DOOM,#FOR I AM GOING TO"
        }
    }
    if (progress == 14 && (!instance_exists(obj_text_box)))
    {
        with (obj_music_player)
            instance_destroy()
        progress = 15
        instance_create(x, y, obj_tm_explosion)
        sprite_index = spr_jane_burned
        image_speed = 0.2
        alarm[1] = 90
        with (obj_tm_dell4)
            image_index = 0
    }
    if (progress == 16 && (!instance_exists(obj_text_box)))
    {
        if (x < 340)
        {
            x += 2
            sprite_index = spr_jane_burned3
            with (obj_tm_dell4)
                image_index = 1
        }
        else
        {
            global.thundermountainprogress = 5
            instance_create(270, 100, obj_tm_dell5)
            with (obj_pro_stopped)
                instance_destroy()
            with (instance_create(0, 0, obj_music_player))
                musictrack = 125
        }
    }
}

