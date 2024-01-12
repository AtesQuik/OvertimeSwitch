scr_turn_if_no_textbox()
if (janetalk == 1 && (!instance_exists(obj_text_box)))
{
    janetalk = 2
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 1
        textvoice = 86
        FACESTR[0] = 643
        STR[0] = "THAT'S NOT TRUE!"
        FACESTR[1] = 643
        STR[1] = "REMEMBER OUR JOB#AT THE MUSEUM?"
    }
}
if (janetalk == 2 && (!instance_exists(obj_text_box)))
{
    janetalk = 3
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 99
        FACESTR[0] = 654
        STR[0] = "* Eh, I dun' think#  we ever worked#  at a museum, Jane."
    }
}
if (janetalk == 3 && (!instance_exists(obj_text_box)))
{
    janetalk = 4
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 0
        textvoice = 86
        FACESTR[0] = 644
        STR[0] = "YES WE DID! YOU GOT#DRUNK AND MADE OUT#WITH THE STATUES!"
    }
}
if (janetalk == 4 && (!instance_exists(obj_text_box)))
{
    janetalk = 5
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 2
        textvoice = 99
        FACESTR[0] = 661
        STR[0] = "* Oh right...I remember."
        FACESTR[1] = 654
        STR[1] = "* Wait a second...#* Didn't we get fired#  because ye blew up"
        FACESTR[2] = 654
        STR[2] = "* the museum because#  ye thought that#  Nazis were invading?"
    }
}
if (janetalk == 5 && (!instance_exists(obj_text_box)))
{
    janetalk = 6
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 0
        textvoice = 86
        FACESTR[0] = 644
        STR[0] = "BUT THEY WERE!#TONS OF THEM!#THEY HAD TANKS!"
    }
}
if (janetalk == 6 && (!instance_exists(obj_text_box)))
{
    janetalk = 7
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 99
        FACESTR[0] = 661
        STR[0] = "* THAT WAS THE#  WORLD WAR 2 EXHIBITION!"
    }
}
if (janetalk == 7 && (!instance_exists(obj_text_box)))
{
    janetalk = 8
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 0
        textvoice = 86
        FACESTR[0] = 646
        STR[0] = "UH, CAN WE CHANGE#THE TOPIC PLEASE?"
    }
}
if (janetalk == 8 && (!instance_exists(obj_text_box)))
{
    janetalk = 0
    with (obj_pro_stopped)
        instance_destroy()
}

