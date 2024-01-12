var __b__;
__b__ = action_if_variable(global.tavishhired, 1, 0)
if __b__
{
    with (obj_activation_object)
        instance_destroy()
    tavishprogress = 1
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = obj_protagonist.prodirection
        instance_destroy()
    }
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 99
        FACESTR[0] = 653
        STR[0] = "* Aye Dell, I could#  swear I saw ye down#  in the mines."
    }
}
else
{
    global.talkedtodell = 1
    with (obj_activation_object)
        instance_destroy()
    if (progress == 0)
    {
        progress = 1
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = obj_protagonist.prodirection
            instance_destroy()
        }
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 1
            textvoice = 85
            FACESTR[0] = 635
            STR[0] = "* say, jane..."
            FACESTR[1] = 635
            STR[1] = "* how were you able to get#  to teufort from thunder#  mountain so quickly?"
        }
    }
}
