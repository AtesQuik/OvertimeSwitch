var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (global.merc2killed == 0 && global.merc3killed == 0)
    {
        if (sparemeter > 0 && actchoice == 0)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = choose("Just#give up!#It's#better.", "Don't,#like,#hold#still!")
            }
        }
        if (actchoice == 4 && sparemeter > 0)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = choose("Just#give up!#It's#better.", "Don't,#like,#hold#still!")
            }
        }
        if (actchoice == 1 && sparemeter > 0)
        {
            if (sparemeter == 10)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    MAXSTR = 0
                    STR[0] = "Huh?#Behind#me?#Okay..."
                }
            }
            if (sparemeter == 5)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    MAXSTR = 0
                    STR[0] = "But#there's#nothing#there!"
                }
            }
        }
        if (actchoice == 2 && sparemeter > 0)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "Hey,#that's#pretty#good!"
            }
        }
        if (actchoice == 3 && sparemeter > 0)
        {
            if (sparemeter > 5)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    MAXSTR = 0
                    STR[0] = "What#are#you#doing?"
                }
            }
            else
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    MAXSTR = 0
                    STR[0] = "I don't#get it."
                }
            }
        }
        if (sparemeter <= 0)
        {
            if (isspared == 0)
            {
                isspared = 1
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    MAXSTR = 3
                    STR[0] = "OW!#HEY!"
                    STR[1] = "WHAT'S#WRONG#WITH#YOU?"
                    STR[2] = "You#know#what?"
                    STR[3] = "I won't#go on#like#this."
                }
            }
            else
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    MAXSTR = 0
                    STR[0] = "..."
                }
            }
        }
    }
    else
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = choose("You...#YOU...#MONS-#TER!", "DIE!", "I'm#going#to kill#you!")
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

