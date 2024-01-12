with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 7
        STR[0] = "* Did you ever inspect these#  crystals? I have.#* They're weird."
        STR[1] = "* I tried counting them once,#  because it's so boring#  down here."
        STR[2] = "* But that wasn't enough."
        STR[3] = "* I multiplied the amount of#  the big ones by the amount#  of the small ones."
        STR[4] = "* I divided.#* Squared.#* Calculated percentages."
        STR[5] = "* I created a new form of#  math, just out of boredom."
        STR[6] = "* I call it " + "\"" + "Crystal Math" + "\"" + "."
        STR[7] = "* Wait, why are you laughing?"
    }
}

