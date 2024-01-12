var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (global.merc1killed == 0 && global.merc3killed == 0)
    {
        if (global.merc1hired == 0)
        {
            if (obj_merc1_battle.sparemeter == 15)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    MAXSTR = 0
                    STR[0] = choose("Boring.", "We need#some#action#here.")
                }
            }
            if (obj_merc1_battle.sparemeter == 10)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    MAXSTR = 0
                    STR[0] = "Hmm...#That#looks#fun..."
                }
            }
            if (obj_merc1_battle.sparemeter == 5)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    MAXSTR = 0
                    STR[0] = "Hehehe!"
                }
            }
            if (obj_merc1_battle.sparemeter == 0)
            {
                if (isspared == 0)
                {
                    isspared = 1
                    with (instance_create(x, 0, obj_speech_bubble))
                    {
                        MAXSTR = 1
                        STR[0] = "Hehehe!"
                        STR[1] = "It's#just a#prank!"
                    }
                }
                else
                {
                    with (instance_create(x, 0, obj_speech_bubble))
                    {
                        MAXSTR = 0
                        STR[0] = "Lighten#up,#dude!"
                    }
                }
            }
        }
        if (global.merc1hired == 1)
        {
            alarm[7] = 15
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = choose("Don't#be#like#that...", "Aw#man...")
            }
        }
    }
    else
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = choose("No...", "I will#make#you#suffer!", "Feel#my#wrath!")
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

