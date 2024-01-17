if (progress == 1)
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 17
        STR[0] = "* Intriguing."
        STR[1] = "* You managed to bend the#  rules to your own will."
        STR[2] = "* Why?#* Just to see if you could?#* Do you feel in control now?"
        STR[3] = "* Well, there's no harm in#  that, is there?"
        STR[4] = "* Of course not."
        STR[5] = "* In fact, you can repeat#  this as many times as#  you like..."
        STR[6] = "* ...and nothing will ever#  change."
        STR[7] = "* Who's in control then?"
        STR[8] = "* You, who got here..."
        STR[9] = "* Or the person that#  anticipated your arrival?"
        STR[10] = "* Maybe it's the silent#  spectator who watches it#  all from a distance."
        STR[11] = "* After all, they didn't#  have to do anything."
        STR[12] = "* However, I suppose all of#  you need each other in#  some way."
        STR[13] = "* So perhaps no one is in#  control after all."
        STR[14] = "* Including myself."
        STR[15] = "* I am not even here#  right now."
        STR[16] = "* And in fact..."
        STR[17] = "* ...neither are you."
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    ossafe_game_end()
}

