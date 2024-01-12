var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (global.genocide == 1)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 86
            fontname = 9
            MAXSTR = 3
            STR[0] = "INTRUDER!#THIS IS NOT#THE TIME#FOR THAT."
            STR[1] = "I PUT MY#WEAPONS#DOWN."
            STR[2] = "DO WHAT YOU#MUST, BUT#PLEASE MAKE#IT QUICK!"
            STR[3] = "LET'S END#THIS WAR#RIGHT NOW."
        }
    }
    else
    {
        if (actchoice == 0 && enemyhealth > 0)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 86
                fontname = 9
                MAXSTR = 0
                STR[0] = "WHAT...#ARE YOU#TRYING TO#DO EXACTLY?"
            }
        }
        if (actchoice == 4)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 86
                fontname = 9
                MAXSTR = 0
                STR[0] = "GETTING A#CLOSER LOOK#AT IMPENDING#DOOM, EH?"
            }
        }
        if (actchoice == 1)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 86
                fontname = 9
                MAXSTR = 0
                STR[0] = "I...UH...TH-#THIS WILL NOT#KEEP ME FROM#FIGHTING YOU!"
            }
        }
        if (actchoice == 2)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 86
                fontname = 9
                MAXSTR = 0
                STR[0] = "DON'T SAY#THAT ABOUT#YOURSELF!#YOU'RE GREAT!"
            }
        }
        if (actchoice == 3)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 86
                fontname = 9
                MAXSTR = 0
                STR[0] = "FLEE? HAH!#DO I LOOK#DRUNK#TO YOU?"
            }
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

