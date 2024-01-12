with (obj_activation_object)
    instance_destroy()
reading = 1
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 5
        STR[0] = "* " + "\"" + "DEAREST SUNSHINE OF#  MY HEART" + "\""
        STR[1] = "* " + "\"" + "WITH ACHING PAIN, I AM#  SORRY TO TELL YOU THAT#  WE CAN NOT COOK TOGETHER." + "\""
        STR[2] = "* " + "\"" + "I HAD PREPARED EVERYTHING,#  BUT THEN I RECEIVED A BUZZ#  WHICH PREVENTED ME FROM"
        STR[3] = "* WAITING FOR YOU." + "\""
        STR[4] = "* " + "\"" + "LUCKILY, I WAS ABLE TO#  COOK A HOT DOG IN#  THE MEANTIME." + "\""
        STR[5] = "* " + "\"" + "I LEFT IT IN THE OVEN." + "\"" + "#* " + "\"" + "ENJOY! IT IS SHAPED#  LIKE ME!" + "\""
    }
}

