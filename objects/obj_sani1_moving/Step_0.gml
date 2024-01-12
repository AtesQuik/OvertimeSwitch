if (process == 0)
{
    if (movedirection == 0)
    {
        y += spd
        sprite_index = spr_sani_down
    }
    if (movedirection == 1)
    {
        x += spd
        sprite_index = spr_sani_right
    }
    if (movedirection == 2)
    {
        y -= spd
        sprite_index = spr_sani_up
    }
    if (movedirection == 3)
    {
        x -= spd
        sprite_index = spr_sani_left
    }
}
if (process == 2)
{
    movedirection = 3
    x -= 4
}
if (process == 3 && (!instance_exists(obj_text_box)))
{
    sprite_index = spr_sani_right
    image_speed = 0.2
    movedirection = 1
    x += 2
    if (distance_to_object(obj_pro_stopped) > 320)
        instance_destroy()
}
if (distance_to_object(obj_pro_stopped) < 128 && process == 0)
{
    instance_create(x, (y - 27), obj_sani1_exc)
    process = 1
    sprite_index = spr_sani_stand
    image_index = 3
    image_speed = 0
    obj_pro_stopped.image_index = 1
}
if (process == 1 && (!instance_exists(obj_sani1_exc)))
{
    sprite_index = spr_sani_left
    process = 2
    image_speed = 0.25
}
if (process == 2 && distance_to_object(obj_pro_stopped) < 32)
{
    instance_create(0, 0, obj_music_player)
    with (obj_music_player)
        musictrack = 112
    sprite_index = spr_sani_stand
    image_speed = 0
    image_index = 3
    process = 3
    with (obj_activation_object)
        instance_destroy()
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 17
        textvoice = 82
        FACESTR[0] = 625
        STR[0] = "* Ach du meine-"
        FACESTR[1] = 621
        STR[1] = "* You're awake!#* I am so glad!"
        FACESTR[2] = 620
        STR[2] = "* Oh! I must apologize."
        FACESTR[3] = 622
        STR[3] = "* You must be very#  confused about where #  you even are."
        FACESTR[4] = 622
        STR[4] = "* You were in a coma for#  three whole days and#  only now woke up!"
        FACESTR[5] = 622
        STR[5] = "* See, apparently you#  fell down a cliff with#  your roller scooter,"
        FACESTR[6] = 622
        STR[6] = "* and you broke at least#  all of the bones in #  your body. Don't worry,"
        FACESTR[7] = 622
        STR[7] = "* they healed up nicely!#* But if I hadn't left for#  my walk this morning..."
        FACESTR[8] = 622
        STR[8] = "* I don't even want to#  imagine it."
        FACESTR[9] = 620
        STR[9] = "* ...!"
        FACESTR[10] = 621
        STR[10] = "* Where are my manners!#* I need to introduce#  myself!"
        FACESTR[11] = 621
        STR[11] = "* I am SANI TATER.#* You can just call me#  Sani."
        FACESTR[12] = 621
        STR[12] = "* And currently you're#  here at my hospital!"
        FACESTR[13] = 621
        STR[13] = "* Thanks to me, you are#  back to the living!"
        FACESTR[14] = 621
        STR[14] = "* I am very glad that the#  machine finally works."
        FACESTR[15] = 620
        STR[15] = "* Oh? What machine, you#  ask? Hehe...let's talk#  about that later."
        FACESTR[16] = 620
        STR[16] = "* First, I need you to#  follow me, please!"
        FACESTR[17] = 621
        STR[17] = "* Take your time, then#  come to the next room!#* I'll see you there!"
    }
}

