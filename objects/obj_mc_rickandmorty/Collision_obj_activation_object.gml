with (obj_activation_object)
    instance_destroy()
speakingto = 1
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 7
        STR[0] = "* Awww, jeez Rick..."
        STR[1] = "* I-I-I don't know if it's#  such a good idea to be#  here..."
        STR[2] = "* I dunno, it seems kinda#  dangerous, you know?"
        STR[3] = "* Listen, Morty, you gotta#  relax!"
        STR[4] = "* I'm here with you,#  aren't I, Morty?"
        STR[5] = "* If a murderous psychopath#  comes and kills everyone,#  I'll get us out of here!"
        STR[6] = "* You gotta trust me, Morty!"
        STR[7] = "* Aw man..."
    }
}
