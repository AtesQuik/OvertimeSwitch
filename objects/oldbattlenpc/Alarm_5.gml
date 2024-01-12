var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (sparemeter > 0)
    {
        instance_create(x, 0, obj_speech_bubble)
        with (obj_speech_bubble)
        {
            MAXSTR = 2
            STR[0] = "Cousin!#Let's go#bowling!"
            STR[1] = "Please!"
            STR[2] = "Let's go!"
        }
    }
    if (actchoice == 4)
    {
        instance_create(x, 0, obj_speech_bubble)
        with (obj_speech_bubble)
        {
            MAXSTR = 0
            STR[0] = "Check all you want ; )"
        }
    }
    if (actchoice == 1)
    {
        instance_create(x, 0, obj_speech_bubble)
        with (obj_speech_bubble)
        {
            MAXSTR = 0
            STR[0] = "I hate compliments."
        }
    }
    if (actchoice == 2)
    {
        instance_create(x, 0, obj_speech_bubble)
        with (obj_speech_bubble)
        {
            MAXSTR = 0
            STR[0] = "I hate insults."
        }
    }
    if (actchoice == 3)
    {
        instance_create(x, 0, obj_speech_bubble)
        if (sparemeter > 4)
        {
            with (obj_speech_bubble)
            {
                MAXSTR = 1
                STR[0] = "I hate my face!"
                STR[1] = "Thank you."
            }
        }
        else
        {
            with (obj_speech_bubble)
            {
                MAXSTR = 1
                STR[0] = "So little face!"
                STR[1] = "Thanks."
            }
        }
    }
    if (sparemeter <= 0)
    {
        instance_create(x, 0, obj_speech_bubble)
        with (obj_speech_bubble)
        {
            MAXSTR = 1
            STR[0] = "No face..."
            STR[1] = "This is nice."
        }
    }
}
action_set_relative(0)
actchoice = 0
action_set_relative(1)
action_set_relative(0)

