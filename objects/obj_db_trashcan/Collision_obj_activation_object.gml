with (obj_activation_object)
    instance_destroy()
with (obj_db_housejane)
    script_execute(scr_face_protagonist)
with (instance_create(x, y, obj_text_box))
{
    fontname = 4
    MAXSTR = 4
    textvoice = 86
    FACESTR[0] = 641
    STR[0] = "THAT'S THE#TRASH CAN."
    FACESTR[1] = 641
    STR[1] = "I USED TO LIVE IN#THERE ONCE!"
    FACESTR[2] = 645
    STR[2] = "BEFORE I MOVED IN#WITH DELL, I WAS#HOMELESS."
    FACESTR[3] = 643
    STR[3] = "MY OLD ROOMMATE#DIDN'T APPRECIATE#MY BRILLIANCE."
    FACESTR[4] = 642
    STR[4] = "BUT I MET LIEUTENANT#BITES AFTER HE#THREW ME OUT!"
}
