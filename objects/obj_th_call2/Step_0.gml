if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 13
        textvoice = 104
        FACESTR[0] = 667
        STR[0] = "* Hello, sorry to bother#  you again."
        FACESTR[1] = 672
        STR[1] = "* I was just about to#  euthanize my#  soldiers..."
        FACESTR[2] = 673
        STR[2] = "* But I noticed there's#  only three of them?"
        FACESTR[3] = 671
        STR[3] = "* You didn't encounter#  a fourth one, did you?"
        FACESTR[4] = 667
        STR[4] = "* Oh dear."
        FACESTR[5] = 664
        STR[5] = "* No, that's fine.#* It was mostly harmless#  anyway."
        FACESTR[6] = 666
        STR[6] = "* And very weak!"
        FACESTR[7] = 666
        STR[7] = "* It never came back to#  life immediately,#  unlike the others."
        FACESTR[8] = 678
        STR[8] = "* I just wonder how#  it was able to#  escape..."
        FACESTR[9] = 678
        STR[9] = "* ...and where it is#  right now."
        FACESTR[10] = 664
        STR[10] = "* Guess we'll never know.#* But that was#  everything."
        FACESTR[11] = 664
        STR[11] = "* Oh, and yes.#* I always had your#  phone number."
        FACESTR[12] = 665
        STR[12] = "* That was just part of#  yet another test!"
        FACESTR[13] = 670
        STR[13] = "* Bye!"
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 0
        STR[0] = "* Click..."
    }
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    instance_destroy()
    global.thcall2 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

