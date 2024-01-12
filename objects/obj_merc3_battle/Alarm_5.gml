var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (global.merc1killed == 0 && global.merc2killed == 0)
    {
        if (global.merc1hired == 0 && global.merc2hired == 0)
        {
            if (obj_merc1_battle.sparemeter > 0 && obj_merc2_battle.sparemeter > 0)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    MAXSTR = 0
                    STR[0] = choose("Prepare#to meet#your#maker!", "Suffer#your#conse-#quences!", "Can't#flee#from#us!")
                }
            }
            else
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    MAXSTR = 0
                    STR[0] = choose("Uh...#Guys.", "Guys...", "Don't#let me#down#here!")
                }
            }
        }
        if (global.merc1hired == 1 && global.merc2hired == 0)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = choose("What on#earth#are you#doing?", "What's#going #on over#there?")
            }
        }
        if (global.merc1hired == 1 && global.merc2hired == 1)
        {
            global.evadetime = 1
            if (sparemeter > 0)
            {
                alarm[7] = 15
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    MAXSTR = 2
                    STR[0] = "WHAT?!"
                    STR[1] = "No...#I give#up."
                    STR[2] = "This is#too#much#for me."
                }
            }
            if (sparemeter <= 0)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    MAXSTR = 0
                    STR[0] = choose("I am so#tired...", "I want#to go#home...")
                }
            }
        }
    }
    else
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = choose("Now#you've#really#done it.", "This#will be#bad for#you.", "Enjoy#your#pain, as#I will!")
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

