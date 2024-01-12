with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 3
        STR[0] = "* It's really exhausting#  to be a miner."
        STR[1] = "* Even worse when you're so#  young like I am!"
        STR[2] = "* I'm a minor-miner."
        STR[3] = "* Hey!#* Stop laughing!#* It's not funny!"
    }
}
