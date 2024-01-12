var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (sparemeter > 0 && actchoice == 0)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "You are a fool for#coming here."
        }
    }
    if (actchoice == 4)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "(Glares back at you)"
        }
    }
    if (actchoice == 1)
    {
        if (sparemeter == 20)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                bubbleshape = 2
                MAXSTR = 2
                STR[0] = "My useless sons#dragged me#to these states."
                STR[1] = "They convinced me#to buy barren#gravel pits."
                STR[2] = "I dreamed of making#a fortune there,#by manufacturing#weapons!"
            }
        }
        if (sparemeter == 15)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                bubbleshape = 2
                MAXSTR = 3
                STR[0] = "Yet it turned out#to be nothing#but acres and acres#of useless, dry sand."
                STR[1] = "So I wasted my#entire life trying#to build my empire#in that desert."
                STR[2] = "But it was all for#nothing, as I caught#every disease known#to man and died."
                STR[3] = "Since then, I've#hated all weapons."
            }
        }
        if (sparemeter == 10)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                bubbleshape = 2
                MAXSTR = 2
                STR[0] = "I swore to haunt#anyone who would#use firearms over#my bones."
                STR[1] = "Yet the morons of#the Badlands do#nothing but that!"
                STR[2] = "Shooting left and#right, as if they#had nothing better#to do!"
            }
        }
        if (sparemeter == 5)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                bubbleshape = 2
                MAXSTR = 1
                STR[0] = "I will be forced#to stay on this#awful planet#for all eternity!"
                STR[1] = "Unless these fools#are willing to give#up their weapons."
            }
        }
        if (sparemeter == 0)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                bubbleshape = 2
                MAXSTR = 1
                STR[0] = "But that won't happen#any time soon."
                STR[1] = "My suffering shall#never end, it seems."
            }
        }
        if (sparemeter < 0)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                bubbleshape = 2
                MAXSTR = 0
                STR[0] = "I have nothing#else to add."
            }
        }
    }
    if (actchoice == 2)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "I can see behind me,#you know.#I'm a ghost."
        }
    }
    if (actchoice == 3)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "(Scoffs)"
        }
    }
    if (sparemeter <= 0 && actchoice == 0)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "I have nothing#else to add."
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

