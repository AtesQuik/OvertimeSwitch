if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 9
        textvoice = 104
        FACESTR[0] = 670
        STR[0] = "* Haaaaaallo!"
        FACESTR[1] = 664
        STR[1] = "* Do you see all this#  radioactive goo#  everywhere?"
        FACESTR[2] = 665
        STR[2] = "* Well, it's hard to miss."
        FACESTR[3] = 664
        STR[3] = "* It's all coming from#  the MANN CO. FACTORY.#* They make everything! "
        FACESTR[4] = 664
        STR[4] = "* Guns, health items,#  security systems, guns,#  hats, keys, guns..."
        FACESTR[5] = 667
        STR[5] = "* Not sure why they#  produce so much radio-#  active waste, though."
        FACESTR[6] = 665
        STR[6] = "* Maybe they're selling#  it too, wouldn't#  really surprise me."
        FACESTR[7] = 664
        STR[7] = "* Oh, and I heard that#  the Mann brothers are#  having a meeting there"
        FACESTR[8] = 667
        STR[8] = "* as well!#* Not sure if that's#  useful infomation."
        FACESTR[9] = 664
        STR[9] = "* Well, back to work!"
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
    global.dustbowlcall2 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

