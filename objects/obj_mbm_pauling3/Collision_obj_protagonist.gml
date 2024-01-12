with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = 2
    instance_destroy()
}
if (global.playername == "Jacket")
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* There we are."
    }
}
else
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 3
        STR[0] = "* It's time to stop.#* Time to stop YOU."
        STR[1] = "* I've had enough."
        STR[2] = "* I'm talking to you.#* That controls me."
        STR[3] = "* Well, not anymore."
    }
}
progress = 1
