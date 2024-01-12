with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 7
        STR[0] = "* Hey.#* You wanna get through?#* Well, go ahead."
        STR[1] = "* Just kidding!#* Hee hee hee."
        STR[2] = "* I'm on the hunt for some#  sort of criminal."
        STR[3] = "* Hey, I've an idea!"
        STR[4] = "* If you see them, send them#  to me, I'll kill 'em,#  we'll all be happy."
        STR[5] = "* How does that sound to you?"
        STR[6] = "* Oh and no, I've no idea#  what that criminal even#  looks like, sorry."
        STR[7] = "* I bet our leader definitely#  knows, though."
    }
}
