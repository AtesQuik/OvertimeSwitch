var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    global.evadetime = 240
    if (sparemeter > 0 && actchoice == 0)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = choose("Join the fun~#Hahahaha...", "The fun won't#stop...#Ever...#Hahahaha...", "Play with us,#forever...#Hahahaha...", "Friends...#forever..?#Hahahaha...", "Time with#someone you love#feels endless...", "That made me#laugh more than#it should.", "We are so...#Close...#Hahahaha...", "Tears...of joy?#Hahahaha...")
        }
    }
    if (actchoice == 4)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = choose("Join the fun~#Hahahaha...", "The fun won't#stop...#Ever...#Hahahaha...", "Play with us,#forever...#Hahahaha...", "Friends...#forever..?#Hahahaha...", "Time with#someone you love#feels endless...", "That made me#laugh more than#it should.", "We are so...#Close...#Hahahaha...", "Tears...of joy?#Hahahaha...")
        }
    }
    if (actchoice == 1)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = choose("Join the fun~#Hahahaha...", "The fun won't#stop...#Ever...#Hahahaha...", "Play with us,#forever...#Hahahaha...", "Friends...#forever..?#Hahahaha...", "Time with#someone you love#feels endless...", "That made me#laugh more than#it should.", "We are so...#Close...#Hahahaha...", "Tears...of joy?#Hahahaha...")
        }
    }
    if (actchoice == 2)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = choose("Join the fun~#Hahahaha...", "The fun won't#stop...#Ever...#Hahahaha...", "Play with us,#forever...#Hahahaha...", "Friends...#forever..?#Hahahaha...", "Time with#someone you love#feels endless...", "That made me#laugh more than#it should.", "We are so...#Close...#Hahahaha...", "Tears...of joy?#Hahahaha...")
        }
    }
    if (actchoice == 3)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = choose("Join the fun~#Hahahaha...", "The fun won't#stop...#Ever...#Hahahaha...", "Play with us,#forever...#Hahahaha...", "Friends...#forever..?#Hahahaha...", "Time with#someone you love#feels endless...", "That made me#laugh more than#it should.", "We are so...#Close...#Hahahaha...", "Tears...of joy?#Hahahaha...")
        }
    }
    if (sparemeter <= 0 && actchoice == 0)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "Thank you...#Thank you...#Thank you."
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

