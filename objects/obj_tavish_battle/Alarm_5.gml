var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (sparemeter > 5)
        sparemeter -= 5
    else
        sparemeter = 20
    attacking = 0
    if (sparemeter == 20)
    {
        attacktype = 0
        global.evadetime = 240
        if (haddrink == 1)
        {
            with (instance_create((x + 8), 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 99
                MAXSTR = 0
                STR[0] = "...gunna kill#both of ye..."
            }
        }
        else
        {
            with (instance_create((x + 8), 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 99
                MAXSTR = 0
                STR[0] = "They're goin' ta#have to glue you#back together...#IN HELL!"
            }
        }
    }
    if (sparemeter == 15)
    {
        attacktype = 0
        global.evadetime = 240
        if (haddrink == 1)
        {
            with (instance_create((x + 8), 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 99
                MAXSTR = 0
                STR[0] = "Ye think ye're#better than me,#missie?"
            }
        }
        else
        {
            with (instance_create((x + 8), 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 99
                MAXSTR = 0
                STR[0] = "Oh, you're a#wee little miss,#you are!"
            }
        }
    }
    if (sparemeter == 10)
    {
        attacktype = 0
        global.evadetime = 240
        if (haddrink == 1)
        {
            with (instance_create((x + 8), 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 99
                MAXSTR = 0
                STR[0] = "Everyone thinks#I'm...#God damn it...#(Weeping)"
            }
        }
        else
        {
            with (instance_create((x + 8), 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 99
                MAXSTR = 0
                STR[0] = "You're makin'#me very CROSS!"
            }
        }
    }
    if (sparemeter == 5)
    {
        attacktype = 1
        global.evadetime = 240
        if (haddrink == 1)
        {
            with (instance_create((x + 8), 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 99
                MAXSTR = 0
                STR[0] = "(Unintelligible#gibberish)"
            }
        }
        else
        {
            with (instance_create((x + 8), 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 99
                MAXSTR = 0
                STR[0] = "They're goin'#to bury what's#left of ya in#a soup can!"
            }
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

