if (progress == 1 && (!instance_exists(obj_mc_exclamation)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* Hey!#* What are you doing here?"
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    script_execute(scr_random_encounter)
}

