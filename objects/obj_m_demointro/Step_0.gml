with (obj_evade_soul)
    instance_destroy()
if (progress == 1)
{
    if (armturn < 90)
        armturn += 18
    else
    {
        progress = 2
        alarm[1] = 5
    }
}
if (progress == 3)
{
    if (armturn > 0)
        armturn -= 30
    else
    {
        armturn = 360
        progress = 4
    }
}
if (progress == 4)
{
    if (armturn > 270)
        armturn -= 30
    else
    {
        progress = 5
        alarm[2] = 5
        if (global.soultype != 2)
        {
            global.soultype = 2
            global.fleedisabled = 1
        }
        else
        {
            global.soultype = 0
            global.fleedisabled = 0
        }
    }
}
if (progress == 6)
{
    if (armturn < 360)
        armturn += 20
    else
        progress = 7
}
if (progress == 7)
{
    if (!instance_exists(obj_tavish_battle))
    {
        progress = 8
        if (global.demochase == 1)
        {
            with (instance_create((x + 8), 0, obj_speech_bubble_noevade))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 99
                MAXSTR = 0
                STR[0] = choose("Get over 'ere!", "Stop running#away, will ya?", "Come back here,#ya numpty!")
            }
        }
        else
        {
            with (instance_create((x + 8), 0, obj_speech_bubble_noevade))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 99
                MAXSTR = 8
                STR[0] = "HAVE AT YE!"
                STR[1] = "Ohh, what's #wrong, lass?#Ye look awfully#green! Haha!"
                STR[2] = "Ye little#greenhorn CAN'T#FLEE from me#like that!"
                STR[3] = "Ya know what?#I'll give ye#a shield!"
                STR[4] = "That'll at least#give ye a chance#to BLOCK me#ATTACKS, hehe!"
                STR[5] = "Why? Because#this would be#over in a minute#otherwise!"
                STR[6] = "I dun' like#getting bored#so quickly!"
                STR[7] = "And dun' you get#any strange#ideas that ye#could HIRE me!"
                STR[8] = "Handin' yer head#in will bring me#enough money!"
            }
        }
    }
    else
        instance_destroy()
}
if (progress == 8 && (!instance_exists(obj_speech_bubble_noevade)))
    room_goto(rm_m_demofight2)
if (global.demochase == 1)
    head = 1
else
    head = 0

