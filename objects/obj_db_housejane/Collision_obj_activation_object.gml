var __b__;
__b__ = action_if_variable(global.tavishhired, 1, 0)
if __b__
{
    with (obj_activation_object)
        instance_destroy()
    tavishtalk = 1
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = obj_protagonist.prodirection
        instance_destroy()
    }
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 2
        textvoice = 86
        FACESTR[0] = 641
        STR[0] = "OH, HELLO!"
        FACESTR[1] = 645
        STR[1] = "I'M SORRY, BUT WE#CAN NOT GO BOWLING."
        FACESTR[2] = 643
        STR[2] = "APPARENTLY THERE IS#NO BOWLING CENTER#HERE IN TEUFORT!"
    }
}
else
{
    with (obj_activation_object)
        instance_destroy()
    script_execute(scr_face_protagonist)
    progress = 1
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 5
        textvoice = 86
        FACESTR[0] = 641
        STR[0] = "OH, HELLO!"
        FACESTR[1] = 645
        STR[1] = "DELL BUILT OUR HOME#ALL BY HIMSELF, BUT#I FORGOT THAT"
        FACESTR[2] = 645
        STR[2] = "HE DIDN'T BUILD THE#INSIDE OF IT YET."
        FACESTR[3] = 641
        STR[3] = "SO NOW WE'RE JUST#STANDING OUT HERE."
        FACESTR[4] = 641
        STR[4] = "DON'T BE SAD, I AM#SURE IT WOULD HAVE#BEEN PRETTY MUCH"
        FACESTR[5] = 641
        STR[5] = "JUST WHAT YOU HAD#EXPECTED."
    }
}
