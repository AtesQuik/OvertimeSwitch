if (sparemeter > 0)
{
    instance_create(x, 0, obj_speech_bubble)
    with (obj_speech_bubble)
    {
        MAXSTR = 0
        STR[0] = "Grmbl..."
    }
}
if (actchoice == 4)
{
    instance_create(x, 0, obj_speech_bubble)
    with (obj_speech_bubble)
    {
        MAXSTR = 0
        STR[0] = "Stop#that!"
    }
}
if (actchoice == 1)
{
    instance_create(x, 0, obj_speech_bubble)
    with (obj_speech_bubble)
    {
        MAXSTR = 0
        STR[0] = "No one#cleans#me..."
    }
}
if (actchoice == 2)
{
    instance_create(x, 0, obj_speech_bubble)
    if (sparemeter > 9)
    {
        with (obj_speech_bubble)
        {
            MAXSTR = 0
            STR[0] = "I hate#you#still..."
        }
    }
    if (sparemeter > 4)
    {
        with (obj_speech_bubble)
        {
            MAXSTR = 0
            STR[0] = "This is#nicer..."
        }
    }
    else
    {
        with (obj_speech_bubble)
        {
            MAXSTR = 0
            STR[0] = "I feel#a lot#better!"
        }
    }
}
if (actchoice == 3)
{
    instance_create(x, 0, obj_speech_bubble)
    with (obj_speech_bubble)
    {
        MAXSTR = 0
        STR[0] = "WHY#WOULD#YOU DO#THAT?!?"
    }
}
if (sparemeter <= 0)
{
    instance_create(x, 0, obj_speech_bubble)
    with (obj_speech_bubble)
    {
        MAXSTR = 0
        STR[0] = "I am so#pretty."
    }
}
actchoice = 0

