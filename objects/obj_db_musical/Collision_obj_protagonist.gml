if (progress == 0)
{
    progress = 1
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 1
        instance_destroy()
    }
    instance_create(230, 280, obj_db_disp6)
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 1
        STR[0] = "* IS THAT..."
        STR[1] = "* ...MY ONE TRUE LOVE?"
    }
}
