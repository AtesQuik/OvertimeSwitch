if (progress == 1)
{
    shakex = irandom_range(-1, 1)
    shakey = irandom_range(-1, 1)
    if (image_alpha < 1)
        image_alpha += 0.01
}
if (progress == 2 && burst == 0)
{
    burst = 1
    shakex = 0
    shakey = 0
    alarm[1] = 30
    audio_play_sound(snd_soul_broken, 1, false)
    sprite_index = spr_soul_broken
}
if (progress == 3)
{
    sprite_index = spr_soul
    progress = 4
    alarm[2] = 30
}
if (progress == 5 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 6
    audio_play_sound(snd_soul_broken, 1, false)
    sprite_index = spr_soul_broken
    with (instance_create(350, y, obj_tpe_saves))
    {
        sprite_index = spr_rocket
        image_xscale = -1
    }
}
if (progress == 7)
{
    progress = 8
    sprite_index = spr_soul
    alarm[3] = 30
}
if (progress == 9 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 10
    audio_play_sound(snd_soul_broken, 1, false)
    sprite_index = spr_soul_broken
    with (instance_create(160, 300, obj_tpe_saves))
    {
        sprite_index = spr_sword_small
        image_index = 1
    }
}
if (progress == 11)
{
    progress = 12
    sprite_index = spr_soul
    alarm[4] = 15
}
if (progress == 13 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 14
    audio_play_sound(snd_soul_broken, 1, false)
    sprite_index = spr_soul_broken
    with (instance_create(350, y, obj_tpe_saves))
        sprite_index = spr_eli_battle_heals
}
if (progress == 15)
{
    with (obj_tpe_ballooney1)
        image_xscale = -1
    progress = 16
    sprite_index = spr_soul
    with (instance_create(160, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 4
        voiceon = 1
        textvoice = 104
        MAXSTR = 0
        STR[0] = "I know enough about#superhumans to say#that you are#definitely one!"
    }
}
if (progress == 16 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 17
    audio_play_sound(snd_soul_broken, 1, false)
    sprite_index = spr_soul_broken
    with (instance_create(160, 300, obj_tpe_saves))
    {
        sprite_index = spr_b_sandvich
        image_xscale = 0.5
        image_yscale = 0.5
    }
}
if (progress == 18)
{
    with (obj_tpe_ballooney1)
        image_xscale = -1
    progress = 19
    sprite_index = spr_soul
    with (instance_create(160, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 4
        voiceon = 1
        textvoice = 81
        MAXSTR = 0
        STR[0] = "You've shown big#heart.#Now put it#to good use."
    }
}
if (progress == 19 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 20
    audio_play_sound(snd_soul_broken, 1, false)
    sprite_index = spr_soul_broken
    with (instance_create(-30, y, obj_tpe_saves))
    {
        sprite_index = spr_spycrab
        image_speed = 0.2
    }
}
if (progress == 21)
{
    with (obj_tpe_ballooney1)
        image_xscale = 1
    progress = 22
    sprite_index = spr_soul
    with (instance_create(-20, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 97
        MAXSTR = 0
        STR[0] = "You haven't paid#me yet, ma chere..."
    }
}
if (progress == 22 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 23
    audio_play_sound(snd_soul_broken, 1, false)
    sprite_index = spr_soul_broken
    with (instance_create(350, y, obj_tpe_saves))
    {
        sprite_index = spr_sniper_bullet_battle2
        image_xscale = -1
    }
}
if (progress == 24)
{
    with (obj_tpe_ballooney1)
        image_xscale = -1
    progress = 25
    sprite_index = spr_soul
    with (instance_create(160, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 4
        voiceon = 1
        textvoice = 96
        MAXSTR = 0
        STR[0] = "If you die now, you#owe me money for#the gas."
    }
}
if (progress == 25 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 26
    audio_play_sound(snd_soul_broken, 1, false)
    sprite_index = spr_soul_broken
    with (instance_create(-30, y, obj_tpe_saves))
        sprite_index = spr_wrenchloop
}
if (progress == 27)
{
    with (obj_tpe_ballooney1)
        image_xscale = 1
    progress = 28
    sprite_index = spr_soul
    with (instance_create(-20, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 85
        fontname = 10
        MAXSTR = 0
        STR[0] = "make me proud,#pardner."
    }
}
if (progress == 28 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 29
    with (obj_tpe_ballooney1)
    {
        progress = 5
        image_xscale = 1
    }
}
if (spin == 1)
{
    if (image_angle > -350)
        image_angle -= 10
    else
        image_angle = 0
    if (bigorsmall == 0)
    {
        if (image_xscale < 2)
            image_xscale += 0.05
        else
            bigorsmall = 1
    }
    if (bigorsmall == 1)
    {
        if (image_xscale > 0.5)
            image_xscale -= 0.05
        else
            bigorsmall = 0
    }
    shakex = irandom_range(-2, 2)
    shakey = irandom_range(-2, 2)
}

