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
            STR[0] = "Hahaha#Hehehe#Hihihi#Hohoho"
        }
    }
    if (actchoice == 4)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "Hahaha#Hehehe#Hihihi#Hohoho"
        }
    }
    if (actchoice == 1)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "Hide the#frown#with#a laugh!"
        }
    }
    if (actchoice == 2)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "Never#stop#laugh-#ing..."
        }
    }
    if (actchoice == 3)
    {
        if (sparemeter > 4)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = choose("I laugh#because#I am so#lonely.", "No one#ever#talks#to me.")
            }
        }
        else
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "Thanks#for#liste-#ning!"
            }
        }
    }
    if (sparemeter <= 0 && actchoice == 0)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "Thanks#for#liste-#ning!"
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

