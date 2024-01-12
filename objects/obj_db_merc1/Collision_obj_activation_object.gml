with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 7
        STR[0] = "* Hey there!#* Uh, sorry, you can't go#  through here."
        STR[1] = "* Apparently there's a#  criminal on the loose."
        STR[2] = "* See, my friends and I are#  mercenaries, and we want#  to kill that criminal."
        STR[3] = "* For the, like, extra cash."
        STR[4] = "* There was a whole wanted#  poster and everything!#* Problem: never saw it."
        STR[5] = "* Someone ripped all of the#  posters off of the walls#  before I could see them."
        STR[6] = "* Personally, I've no idea#  what that so-called#  criminal even looks like."
        STR[7] = "* So I'm just waiting here#  until my friends spot them,#  then I'll jump into action!"
    }
}
