scr_face_protagonist()
if (global.hospitalprogress == 5)
{
    with (obj_activation_object)
        instance_destroy()
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = obj_protagonist.prodirection
        instance_destroy()
    }
    if (global.dummykilled == 0 && global.dummyhired == 0)
    {
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            MAXSTR = 3
            textvoice = 82
            FACESTR[0] = 620
            STR[0] = "* Fleeing is also#  an option."
            FACESTR[1] = 620
            STR[1] = "* Sometimes, people just#  can not be reasoned#  with, and it is the"
            FACESTR[2] = 620
            STR[2] = "* only way to resolve#  the conflict."
            FACESTR[3] = 621
            STR[3] = "* Now, please follow me#  again!"
        }
    }
    if (global.dummykilled == 1)
    {
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            MAXSTR = 3
            textvoice = 82
            FACESTR[0] = 621
            STR[0] = "* Nice shooting there!"
            FACESTR[1] = 620
            STR[1] = "* I think you should stop#  now though, as I only#  have that one dummy."
            FACESTR[2] = 620
            STR[2] = "* It takes quite a long#  time to make those!"
            FACESTR[3] = 621
            STR[3] = "* Now, please follow me#  again!"
        }
    }
    if (global.dummyhired == 1)
    {
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            MAXSTR = 4
            textvoice = 82
            FACESTR[0] = 621
            STR[0] = "* I am glad you didn't#  use violence, even#  if it's just"
            FACESTR[1] = 621
            STR[1] = "* an inanimate object."
            FACESTR[2] = 621
            STR[2] = "* Always try to keep that#  up, and you will be#  fine!"
            FACESTR[3] = 620
            STR[3] = "* Though usually it takes#  a bit more than that to#  convince people."
            FACESTR[4] = 621
            STR[4] = "* Now, please follow me#  again!"
        }
    }
    global.hospitalprogress = 6
}
