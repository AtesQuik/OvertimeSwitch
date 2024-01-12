var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (sparemeter > 0 && actchoice == 0)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = choose("Uh, I#heard#you are#hiring?", "I'd#love to#work#for you!", "Wanna#hire a#cool#guy?")
        }
    }
    if (actchoice == 4)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "I fight#with#knives!"
        }
    }
    if (actchoice == 1)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = choose("Nah,#that's#the#old me.", "No, no!#I've#impro-#ved!")
        }
    }
    if (actchoice == 2)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "Boom!#Still#here!#...heh."
        }
    }
    if (actchoice == 3)
    {
        if (sparemeter > 4)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "Hooray!#Here's#my CV!"
            }
        }
        else
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "Are you#serious?#Yay!"
            }
        }
    }
    if (sparemeter <= 0 && actchoice == 0)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "Aw man,#this is#super#cool!"
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

