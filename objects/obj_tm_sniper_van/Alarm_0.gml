var __b__;
__b__ = action_if_variable(global.sniperkilled, 0, 0)
if __b__
{
    if (randomchoice == 0)
    {
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = 96
            MAXSTR = 3
            FACESTR[0] = 652
            STR[0] = "* Snipin's a good job.#* It's challenging work,#  outta doors..."
            FACESTR[1] = 651
            STR[1] = "* I guarantee you'll#  not go hungry."
            FACESTR[2] = 652
            STR[2] = "* Cause at the end of the#  day, long as there's#  two people left on"
            FACESTR[3] = 651
            STR[3] = "* the planet, someone#  is gonna want#  someone dead."
        }
    }
    if (randomchoice == 1)
    {
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = 96
            MAXSTR = 3
            FACESTR[0] = 652
            STR[0] = "* Why are you here?"
            FACESTR[1] = 651
            STR[1] = "* No..."
            FACESTR[2] = 652
            STR[2] = "* Not why you are here#  in the van with me."
            FACESTR[3] = 651
            STR[3] = "* Why ARE you?"
        }
    }
    if (randomchoice == 2)
    {
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = 96
            MAXSTR = 1
            FACESTR[0] = 652
            STR[0] = "* Beware of the man who#  speaks in hands."
            FACESTR[1] = 651
            STR[1] = "* It just bloody freaks#  me out, that's all."
        }
    }
    if (randomchoice == 3)
    {
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = 96
            MAXSTR = 1
            FACESTR[0] = 652
            STR[0] = "* He's not who you#  think he is,#  you know."
            FACESTR[1] = 651
            STR[1] = "* Don't make assumptions#  so early."
        }
    }
    if (randomchoice == 4)
    {
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = 96
            MAXSTR = 2
            FACESTR[0] = 652
            STR[0] = "* Have you ever woken up#  one day in a new world#  that looks exactly like"
            FACESTR[1] = 651
            STR[1] = "* the world you went to#  sleep in, but you feel#  that it's not the same?"
            FACESTR[2] = 652
            STR[2] = "* Just wonderin'."
        }
    }
    if (randomchoice == 5)
    {
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = 96
            MAXSTR = 0
            FACESTR[0] = 652
            STR[0] = "* You're a lass#  with a big heart,#  you know that?"
        }
    }
    if (randomchoice == 6)
    {
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = 96
            MAXSTR = 2
            FACESTR[0] = 652
            STR[0] = "* Ah,"
            FACESTR[1] = 651
            STR[1] = "* ..."
            FACESTR[2] = 652
            STR[2] = "* Sorry, lost my train#  of thought."
        }
    }
    stuff = 1
}
else
    action_set_alarm(1, 1)

