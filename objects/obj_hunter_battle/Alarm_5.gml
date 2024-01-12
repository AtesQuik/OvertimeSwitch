var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    global.evadetime = 270
    if (sparemeter > 0 && actchoice == 0)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = choose("Gnissim taht xof", "Eh syawla tpek#gninialpmoc", "Deen doof#Deef ylimaf", "Ylenol ereh#Os teiuq dna krad")
        }
    }
    if (actchoice == 4)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = choose("Gnissim taht xof", "Eh syawla tpek#gninialpmoc", "Deen doof#Deef ylimaf", "Ylenol ereh#Os teiuq dna krad")
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
            STR[0] = "YHW ERA#UOY NI YM#SDOOW?"
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
            STR[0] = "TNANTUEIL#SETIB, ON#TEG FFO MIH#TON DOOF"
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
            STR[0] = "HCREP TON#EFAS#HCTAW TUO#ROF FFILC"
        }
    }
    if (sparemeter <= 0 && actchoice == 0)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "Fi nam seid ni sdoow#seod enoyna eciton#Ro neve erac"
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

