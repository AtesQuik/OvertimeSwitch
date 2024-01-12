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
            STR[0] = "Ohh#baby!"
        }
    }
    if (actchoice == 4)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "Ohh#baby!"
        }
    }
    if (actchoice == 1)
    {
        if (sparemeter == 10)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "Ohh#baby!"
            }
        }
        if (sparemeter == 5)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "Really?#I'll#show#you!"
            }
        }
        if (sparemeter == 0 && canspare == 0)
        {
            canspare = 1
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "One...#more?#S-sure!#(Oh no)"
            }
        }
        if (sparemeter == 0 && canspare == 2)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "Please,#no#more..."
            }
        }
    }
    if (actchoice == 2)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "Nah.#I hate#those."
        }
    }
    if (actchoice == 3)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "What#could#you have#to say?"
        }
    }
    if (sparemeter <= 0 && actchoice == 0)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "Ohh...#This was#one too#many..."
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

