var __b__;
__b__ = action_if_variable(global.tavishhired, 1, 0)
if __b__
{
    with (obj_activation_object)
        instance_destroy()
    tavishbites = 1
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
        FACESTR[0] = 658
        STR[0] = "* Jane, ye still have that#  ruffled ol' raccoon as#  your pet?"
    }
}
else
{
    with (obj_activation_object)
        instance_destroy()
    with (obj_db_housejane)
        script_execute(scr_face_protagonist)
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 3
        textvoice = 86
        FACESTR[0] = 641
        STR[0] = "THAT'S#LIEUTENANT BITES."
        FACESTR[1] = 641
        STR[1] = "HE'S MY PET#RACCOON!"
        FACESTR[2] = 642
        STR[2] = "IF HE BITES YOU,#THAT MEANS HE#LOVES YOU!"
        FACESTR[3] = 641
        STR[3] = "I HOPE YOU DON'T#MIND RABIES."
    }
}
