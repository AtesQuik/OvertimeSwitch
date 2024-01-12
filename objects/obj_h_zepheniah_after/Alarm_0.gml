talking = 1
instance_create(x, y, obj_text_box)
if (global.zepheniahkilled == 1)
{
    with (obj_text_box)
    {
        MAXSTR = 4
        STR[0] = "* I knew it!#* You are just another pest!"
        STR[1] = "* You only have yourself on#  your mind and you'll gladly#  kill anything that comes"
        STR[2] = "* in your way!#* You utter simpleton!"
        STR[3] = "* That does it!#* For using your firearms,#  you shall suffer my curse!"
        STR[4] = "* Fear the day when I return,#  because it will be the day#  your life ends!"
    }
}
else if (global.zepheniahhired == 1)
{
    with (obj_text_box)
    {
        MAXSTR = 8
        STR[0] = "* You...didn't use#  your gun at all...#* But why?"
        STR[1] = "* Why did you not try#  to shoot at me?"
        STR[2] = "* Because I am a ghost?"
        STR[3] = "* Or do you simply not#  like using weapons?"
        STR[4] = "* ..."
        STR[5] = "* Maybe it is not too late."
        STR[6] = "* Maybe not everyone around#  here is an idiot who only#  cares for themselves."
        STR[7] = "* ..."
        STR[8] = "* Thank you."
    }
}
itsover = 1

