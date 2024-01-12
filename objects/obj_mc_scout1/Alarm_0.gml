var __b__;
__b__ = action_if_variable(global.scoutgenoquit, 0, 0)
if __b__
{
    progress = 1
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = 98
        MAXSTR = 19
        FACESTR[0] = 682
        STR[0] = "* So..."
        FACESTR[1] = 681
        STR[1] = "* Now what?"
        FACESTR[2] = 684
        STR[2] = "* ..."
        FACESTR[3] = 684
        STR[3] = "* Would you..."
        FACESTR[4] = 681
        STR[4] = "* Would you like to go#  out on an actual date#  with me?"
        FACESTR[5] = 681
        STR[5] = "* Now, of course you#  don't have to, I will#  understand if you"
        FACESTR[6] = 682
        STR[6] = "* don't want to, I don't#  want to force you or#  anything, and actu-"
        FACESTR[7] = 681
        STR[7] = "* W-what?#* You DO?!?"
        FACESTR[8] = 686
        STR[8] = "* AW MAN!#* AWESOME!"
        FACESTR[9] = 681
        STR[9] = "* Oh right, you still#  have some business to#  take care of."
        FACESTR[10] = 682
        STR[10] = "* Yo..."
        FACESTR[11] = 681
        STR[11] = "* Remember when I sang#  about how Misha would#  certainly kill you?"
        FACESTR[12] = 680
        STR[12] = "* You know...I actually#  think you'll do just#  fine."
        FACESTR[13] = 680
        STR[13] = "* I mean, if you can#  survive a toaster with#  a flame thrower..."
        FACESTR[14] = 685
        STR[14] = "* ...then an undefeated#  killing machine won't#  stop you."
        FACESTR[15] = 682
        STR[15] = "* ..."
        FACESTR[16] = 680
        STR[16] = "* Heh."
        FACESTR[17] = 680
        STR[17] = "* I'll pick you up later.#* You know.#* For the date."
        FACESTR[18] = 680
        STR[18] = "* See you."
        FACESTR[19] = 680
        STR[19] = "* You can do it, pally."
    }
}
else
{
    progress = 1
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = 98
        MAXSTR = 8
        FACESTR[0] = 681
        STR[0] = "* It could have been#  really fun."
        FACESTR[1] = 681
        STR[1] = "* I'd have loved to#  go out on a real date#  with you."
        FACESTR[2] = 682
        STR[2] = "* Well...some things#  just aren't meant#  to be."
        FACESTR[3] = 684
        STR[3] = "* Maybe in another life#  we could have went#  out on a date."
        FACESTR[4] = 681
        STR[4] = "* In another life in#  which you didn't kill#  everyone."
        FACESTR[5] = 684
        STR[5] = "* Such is life."
        FACESTR[6] = 683
        STR[6] = "* ..."
        FACESTR[7] = 682
        STR[7] = "* So, ummm..."
        FACESTR[8] = 681
        STR[8] = "* Like, goodbye.#* I guess."
    }
}

