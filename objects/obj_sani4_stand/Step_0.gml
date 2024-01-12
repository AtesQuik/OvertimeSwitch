var __b__;
scr_turn_if_no_textbox()
__b__ = action_if_variable(global.hospitalprogress, 5, 1)
if __b__
{
    if (global.hospitalprogress == 3 && distance_to_object(obj_protagonist) < 128)
    {
        with (obj_activation_object)
            instance_destroy()
        if (!instance_exists(obj_text_box))
        {
            instance_create(x, y, obj_text_box)
            with (obj_text_box)
            {
                MAXSTR = 22
                textvoice = 82
                FACESTR[0] = 620
                STR[0] = "* Pay attention please!"
                FACESTR[1] = 620
                STR[1] = "* If you look in your#  pocket, you will find#  your Derringer in it."
                FACESTR[2] = 620
                STR[2] = "* It is still working,#  I didn't do anything#  with it."
                FACESTR[3] = 620
                STR[3] = "* I won't judge you for#  owning it either."
                FACESTR[4] = 620
                STR[4] = "* In fact, you will need#  it right now!"
                FACESTR[5] = 620
                STR[5] = "* In front of you is a#  training dummy."
                FACESTR[6] = 621
                STR[6] = "* It looks just like me!"
                FACESTR[7] = 620
                STR[7] = "* I need to test your#  aiming, because due to#  the accident, your"
                FACESTR[8] = 620
                STR[8] = "* hand-eye coordination#  may have suffered a#  little."
                FACESTR[9] = 620
                STR[9] = "* So, I want you to#  practice your shooting#  on that dummy."
                FACESTR[10] = 622
                STR[10] = "* But..."
                FACESTR[11] = 622
                STR[11] = "* Please don't forget#  that in a real#  situation, you should#"
                FACESTR[12] = 622
                STR[12] = "* not always take the#  violent route."
                FACESTR[13] = 622
                STR[13] = "* You may have realised#  that your NOTEPAD has#  a list of people you"
                FACESTR[14] = 622
                STR[14] = "* hired, and...well,#  killed."
                FACESTR[15] = 622
                STR[15] = "* I don't know if you#  remember what that was#  for, but I suspect you"
                FACESTR[16] = 622
                STR[16] = "* wanted to hire certain#  people you meet, and#  get rid of others."
                FACESTR[17] = 622
                STR[17] = "* But please, I urge#  you...#* ACT peacefully."
                FACESTR[18] = 620
                STR[18] = "* Resolve their issues#  and persuade them into#  working for you."
                FACESTR[19] = 620
                STR[19] = "* You may find a hidden#  talent or two that way."
                FACESTR[20] = 620
                STR[20] = "* Anyway, you can test#  your shooting#  (or hiring)"
                FACESTR[21] = 620
                STR[21] = "* on the dummy."
                FACESTR[22] = 620
                STR[22] = "* Bitte step forward and#  engage it."
            }
            global.hospitalprogress = 4
        }
    }
}
else
    action_kill_object()

