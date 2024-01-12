if (progress == 0)
{
    if (leftorright == 0)
    {
        if (shakex > -6)
            shakex -= shakespd
        else
            leftorright = 1
    }
    if (leftorright == 1)
    {
        if (shakex < 6)
            shakex += shakespd
        else
            leftorright = 0
    }
}
if (progress == 1)
{
    if (shakex == 0)
    {
        progress = 2
        alarm[1] = 30
    }
    else
    {
        if (shakex < 0)
            shakex += 1
        if (shakex > 0)
            shakex -= 1
    }
}
if (progress == 3)
{
    progress = 4
    with (instance_create((x + 16), 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 81
        MAXSTR = 3
        STR[0] = "Well, this is#how things must be."
        STR[1] = "You are too strong."
        STR[2] = "Even for me."
        STR[3] = "..."
    }
}
if (progress == 4 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 5
    alarm[2] = 60
}
if (progress == 6)
{
    progress = 7
    with (instance_create(0, 0, obj_music_player))
        musictrack = 167
    with (instance_create((x + 16), 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 81
        MAXSTR = 32
        STR[0] = "I still remember day#when Redmond Mann#offered me this job."
        STR[1] = "I had gotten letter,#from home."
        STR[2] = "Mother was sick."
        STR[3] = "Sisters were uneasy."
        STR[4] = "They cried for my#help."
        STR[5] = "But I was not there."
        STR[6] = "All I could do was#send money."
        STR[7] = "But we needed more."
        STR[8] = "More than what#I earned."
        STR[9] = "Then, RED member#got killed."
        STR[10] = "I got offered job."
        STR[11] = "I had no choice."
        STR[12] = "I did it for mother."
        STR[13] = "I lost best friend."
        STR[14] = "..."
        STR[15] = "You met him."
        STR[16] = "The machine that is#in me..."
        STR[17] = "...is also in you."
        STR[18] = "I felt it strongly."
        STR[19] = "..."
        STR[20] = "He wanted you to#live."
        STR[21] = "..."
        STR[22] = "My machine is#getting old."
        STR[23] = "Needs repair."
        STR[24] = "Eli does not know it#enough to repair."
        STR[25] = "It's what keeps me#alive."
        STR[26] = "But it will fail."
        STR[27] = "I lost a friend to#help family."
        STR[28] = "Now I will lose life,#and can not help#family any more."
        STR[29] = "But he wanted you#to keep going."
        STR[30] = "Strike me down."
        STR[31] = "Do your job."
        STR[32] = "Is what I want."
    }
}
if (progress == 7 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 10)
        heads = 1
    if (obj_speech_bubble_noevade.N == 11)
        heads = 0
    if (obj_speech_bubble_noevade.N == 13)
        heads = 5
    if (obj_speech_bubble_noevade.N == 15)
        heads = 1
    if (obj_speech_bubble_noevade.N == 19)
        heads = 0
    if (obj_speech_bubble_noevade.N == 23)
        heads = 1
    if (obj_speech_bubble_noevade.N == 26)
        heads = 0
    if (obj_speech_bubble_noevade.N == 29)
        heads = 1
    if (obj_speech_bubble_noevade.N == 31)
        heads = 0
    if (obj_speech_bubble_noevade.N == 32)
        heads = 5
}
if (progress == 7 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 8
    instance_create(160, 160, obj_fake_evade_soul)
    instance_create(40, 150, obj_misha_fightchoice)
    instance_create(225, 150, obj_misha_mercychoice)
}
if (progress == 8 && (!instance_exists(obj_misha_lastbox)))
{
    progress = 9
    with (obj_misha_fightchoice)
        instance_destroy()
    with (obj_misha_mercychoice)
        instance_destroy()
    with (obj_music_player)
        instance_destroy()
}
if (progress == 9 && peaceordeath == 1)
{
    progress = 10
    with (instance_create((x + 16), 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 81
        MAXSTR = 13
        STR[0] = "..."
        STR[1] = "Even after this,#you show mercy?"
        STR[2] = "You want to hire#enemy?"
        STR[3] = "..."
        STR[4] = "Maybe..."
        STR[5] = "You see some of him#in me, like I saw#some of him in you."
        STR[6] = "Thank you."
        STR[7] = "I will let Redmond#fire me."
        STR[8] = "I do not wish to#work for him#anymore."
        STR[9] = "Not if it means#you die."
        STR[10] = "I promise to work#hard and earn good#money."
        STR[11] = "For family."
        STR[12] = "Now."
        STR[13] = "Do you want to play#game of chess?"
    }
}
if (progress == 10 && peaceordeath == 1 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 2)
        heads = 1
    if (obj_speech_bubble_noevade.N == 3)
        heads = 5
    if (obj_speech_bubble_noevade.N == 5)
        heads = 1
    if (obj_speech_bubble_noevade.N == 7)
        heads = 3
    if (obj_speech_bubble_noevade.N == 8)
        heads = 1
}
if (progress == 10 && peaceordeath == 1 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 11
    instance_create(160, -120, obj_misha_bottle)
}
if (progress == 12 && peaceordeath == 1)
{
    progress = 15
    heads = 9
}
if (progress == 9 && peaceordeath == 2)
{
    if (shootprogress == 1)
    {
        shootprogress = 2
        shooting = 1
        alarm[5] = 30
    }
    if (shootprogress == 3)
    {
        shootprogress = 4
        shooting = 2
        alarm[6] = 30
        audio_play_sound(snd_shoot, 1, false)
    }
    if (shootprogress == 5)
    {
        progress = 15
        heads = 11
    }
}
if (progress == 15)
{
    progress = 16
    audio_play_sound(snd_enemy_hurt, 1, false)
    image_alpha = 0.5
    alarm[3] = 30
}
if (progress == 16 && peaceordeath == 2)
{
    if (gunalpha > 0)
        gunalpha -= 0.05
    else
        shooting = 0
}
if (progress == 17)
{
    if (image_alpha > 0)
        image_alpha -= 0.025
    else
        progress = 18
}
if (progress == 18 && (!instance_exists(obj_misha_heart)))
    progress = 19

