scr_turn_if_no_textbox()
if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 2
        textvoice = 86
        FACESTR[0] = 644
        STR[0] = "DELL, YOU KNOW ME!"
        FACESTR[1] = 644
        STR[1] = "I'M A ROAMER!#I'M ALWAYS FAST,#LIKE THE WIND!"
        FACESTR[2] = 645
        STR[2] = "BUT HOW DID YOU GET#HERE SO QUICKLY..?"
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 0
        textvoice = 85
        FACESTR[0] = 636
        STR[0] = "* oh, let's just say i have#  my ways."
    }
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    progress = 4
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 0
        textvoice = 86
        FACESTR[0] = 643
        STR[0] = "DELL! THAT ONLY#BROUGHT UP EVEN#MORE QUESTIONS!"
    }
}
if (progress == 4 && (!instance_exists(obj_text_box)))
{
    progress = 0
    with (obj_pro_stopped)
        instance_destroy()
}
if (tavishprogress == 1 && (!instance_exists(obj_text_box)))
{
    tavishprogress = 2
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 0
        textvoice = 85
        FACESTR[0] = 637
        STR[0] = "* you sure it was not#  just a hallucination?"
    }
}
if (tavishprogress == 2 && (!instance_exists(obj_text_box)))
{
    tavishprogress = 3
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 99
        FACESTR[0] = 653
        STR[0] = "* Well...that is a#  possibility."
    }
}
if (tavishprogress == 3 && (!instance_exists(obj_text_box)))
{
    tavishprogress = 4
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 1
        textvoice = 86
        FACESTR[0] = 643
        STR[0] = "WAIT A MINUTE!#HOW CAN WE BE SURE#THAT YOU AREN'T A"
        FACESTR[1] = 643
        STR[1] = "HALLUCINATION#RIGHT NOW TOO?"
    }
}
if (tavishprogress == 4 && (!instance_exists(obj_text_box)))
{
    tavishprogress = 5
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 99
        FACESTR[0] = 661
        STR[0] = "* What if I'm a#  hallucination as well?"
    }
}
if (tavishprogress == 5 && (!instance_exists(obj_text_box)))
{
    tavishprogress = 6
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 0
        textvoice = 86
        FACESTR[0] = 646
        STR[0] = "OH NO!#THAT WOULD MAKE#THINGS EVEN WORSE!"
    }
}
if (tavishprogress == 6 && (!instance_exists(obj_text_box)))
{
    tavishprogress = 7
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 99
        FACESTR[0] = 661
        STR[0] = "* Do you want me to#  pinch ye so you know#  I'm real?"
    }
}
if (tavishprogress == 7 && (!instance_exists(obj_text_box)))
{
    tavishprogress = 8
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 1
        textvoice = 86
        FACESTR[0] = 643
        STR[0] = "NO! YOU DID THAT ON#SAINT PATRICK'S DAY#ALREADY!"
        FACESTR[1] = 643
        STR[1] = "AND I WAS EVEN#WEARING GREEN!"
    }
}
if (tavishprogress == 8 && (!instance_exists(obj_text_box)))
{
    tavishprogress = 9
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 99
        FACESTR[0] = 655
        STR[0] = "* What can I say?#* Ye're a pinchable lad!"
    }
}
if (tavishprogress == 9 && (!instance_exists(obj_text_box)))
{
    tavishprogress = 10
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 0
        textvoice = 86
        FACESTR[0] = 644
        STR[0] = "YEAH?#YOU'RE A#PUNCHABLE LAD!"
    }
}
if (tavishprogress == 10 && (!instance_exists(obj_text_box)))
{
    tavishprogress = 11
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 99
        FACESTR[0] = 656
        STR[0] = "* Ohhh, ye wanna have#  a go?"
    }
}
if (tavishprogress == 11 && (!instance_exists(obj_text_box)))
{
    tavishprogress = 12
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 0
        textvoice = 86
        FACESTR[0] = 643
        STR[0] = "YES PLEASE! THAT#WAY I KNOW FOR SURE#THAT YOU'RE REAL!"
    }
}
if (tavishprogress == 12 && (!instance_exists(obj_text_box)))
{
    tavishprogress = 0
    with (obj_pro_stopped)
        instance_destroy()
}

