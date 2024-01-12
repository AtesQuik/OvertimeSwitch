var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 2, 2)
if __b__
    action_kill_object()
else
{
    global.encountersdisabled = 1
    if (progress == 0 && distance_to_object(obj_protagonist) < 180)
    {
        instance_create(20, 170, obj_tm_wall_noreturn1)
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
        progress = 2
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 6
            textvoice = 86
            FACESTR[0] = 644
            STR[0] = "INTRUDER!#SO YOU TRY TO#INVADE MY COUNTRY?"
            FACESTR[1] = 644
            STR[1] = "TRY AGAIN!#WAIT!#YOU CAN'T!"
            FACESTR[2] = 644
            STR[2] = "FOR I BUILT A WALL!"
            FACESTR[3] = 644
            STR[3] = "IT IS IMPOSSIBLE#FOR YOU TO#GET HERE NOW!"
            FACESTR[4] = 644
            STR[4] = "AND TO MAKE THINGS#EVEN WORSE!"
            FACESTR[5] = 644
            STR[5] = "I HAVE A GRENADE!"
            FACESTR[6] = 644
            STR[6] = "LET'S SEE HOW#YOU WILL GET#OUT OF THIS!"
        }
    }
    if (progress == 2 && (!instance_exists(obj_text_box)))
    {
        sprite_index = spr_jane_left
        image_speed = 0.5
        if (x < 280)
            x += 0.5
        else
            progress = 3
    }
    if (progress == 3 && (!instance_exists(obj_text_box)))
    {
        if (x > 220)
            x -= 4
        else
        {
            progress = 4
            instance_create(x, y, obj_tm_grenade)
        }
    }
    if (progress == 4)
    {
        if (x < 270)
        {
            image_speed = 0.5
            sprite_index = spr_jane_right
            x += 4
        }
        else
        {
            progress = 5
            image_speed = 0
            sprite_index = spr_jane_not_listening
        }
    }
    if (progress == 5 && place_meeting(x, y, obj_tm_explosion))
    {
        progress = 6
        alarm[0] = 90
        sprite_index = spr_jane_burned
        image_speed = 0.1
    }
    if (progress == 7 && (!instance_exists(obj_text_box)))
    {
        sprite_index = spr_jane_stand
        image_index = 3
        image_speed = 0
        progress = 8
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 2
            textvoice = 86
            FACESTR[0] = 644
            STR[0] = "NONETHELESS!"
            FACESTR[1] = 644
            STR[1] = "YOU WILL NOT#COME OVER HERE!"
            FACESTR[2] = 644
            STR[2] = "YOU CAN TRY#NOW, BUT YOU#WILL FAIL!"
        }
        with (obj_pro_stopped)
            instance_destroy()
    }
    if (progress == 9)
    {
        image_index = 2
        progress = 10
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 7
            textvoice = 86
            FACESTR[0] = 643
            STR[0] = "IMPOSSIBLE!"
            FACESTR[1] = 643
            STR[1] = "ALRIGHT!#YOU WIN THIS ROUND!"
            FACESTR[2] = 644
            STR[2] = "BUT NEXT TIME!"
            FACESTR[3] = 644
            STR[3] = "I SHALL!"
            FACESTR[4] = 644
            STR[4] = "STOP YOU MORE!"
            FACESTR[5] = 644
            STR[5] = "OR EVEN AT ALL!"
            FACESTR[6] = 641
            STR[6] = "ALRIGHT, SEE YOU!"
            FACESTR[7] = 641
            STR[7] = "DON'T FORGET TO#GET REFRESHMENTS#ON THE WAY!"
        }
    }
    if (progress == 10 && (!instance_exists(obj_text_box)))
    {
        sprite_index = spr_jane_right
        image_speed = 0.2
        if (x < 440)
            x += 3
        else
        {
            progress = 10
            with (obj_pro_stopped)
                instance_destroy()
            global.thundermountainprogress = 3
            with (obj_music_player)
                musictrack = 125
        }
    }
}

