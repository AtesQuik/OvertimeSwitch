if (progress == 5)
{
    image_speed = 0.1
    if (global.genocide == 0)
    {
        if (animation == irandom(4))
            image_index = choose(0, 1)
    }
}
if (progress == 0 && instance_exists(obj_protagonist))
{
    if (distance_to_object(obj_protagonist) < 32)
    {
        progress = 1
        global.textboxtop = 0
        with (obj_protagonist)
        {
            global.playerxpos = x
            global.playerypos = y
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = 2
            instance_destroy()
        }
        alarm[1] = 30
    }
}
if (progress == 2)
{
    audio_play_sound(snd_step, 1, false)
    sprite_index = spr_dispenser_talk
    image_speed = 0
    progress = 3
}
if (progress == 3)
{
    progress = 4
    if (global.scoutturned == 0)
        alarm[0] = 30
    else
        alarm[6] = 30
}
if (progress == 5 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
    if (global.genocide == 0)
    {
        if (obj_text_box.N == 4)
            sprite_index = spr_dispenser_robo
        if (obj_text_box.N == 5)
            sprite_index = spr_dispenser_robo
        if (obj_text_box.N == 6)
            sprite_index = spr_dispenser_talk
        if (obj_text_box.N == 7)
            sprite_index = spr_dispenser_robo
    }
}
if (progress == 5 && (!instance_exists(obj_text_box)))
{
    image_speed = 0
    progress = 6
    alarm[2] = 30
}
if (progress == 8 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}
if (progress == 8 && (!audio_is_playing(snd_fearsting)) && (!instance_exists(obj_text_box)))
{
    progress = 9
    global.mcprogress = 1
    script_execute(scr_random_encounter)
}
if (turnprogress == 1)
{
    if (global.textboxchoice == 1)
    {
        turnprogress = 2
        global.textboxchoice = 0
        with (obj_text_box)
        {
            MAXSTR = 0
            STR[0] = "* (You tell Dispenser you're#  actually behind him and#  he's facing the wrong way.)"
        }
    }
    if (global.textboxchoice == 2)
    {
        with (obj_text_box)
            instance_destroy()
        global.textboxchoice = 0
        alarm[0] = 30
    }
}
if (turnprogress == 2 && (!instance_exists(obj_text_box)))
{
    turnprogress = 3
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 0
        STR[0] = "* M-M-MY APOLOGIES."
    }
}
if (turnprogress == 3 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
    image_speed = 0.1
}
if (turnprogress == 3 && (!instance_exists(obj_text_box)))
{
    image_speed = 0
    turnprogress = 4
    alarm[7] = 30
}
if (turnprogress == 5)
{
    global.battleroom = 154
    turnprogress = 6
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 3
        STR[0] = "* -SELF-DESTRUCTION#  INITIATED-"
        STR[1] = "* -DESTRUCTION IN:-#* - 3 -"
        STR[2] = "* - 2 -"
        STR[3] = "* - 1 -"
    }
}
if (turnprogress == 6 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}
if (turnprogress == 6 && (!instance_exists(obj_text_box)))
{
    turnprogress = 7
    global.mcprogress = 1
    script_execute(scr_random_encounter)
}

