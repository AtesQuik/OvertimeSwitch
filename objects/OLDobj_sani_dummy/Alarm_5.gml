if (sparemeter > 0)
{
    instance_create(x, 0, obj_speech_bubble)
    with (obj_speech_bubble)
    {
        MAXSTR = 0
        STR[0] = "...?"
    }
}
if (sparemeter <= 0)
{
    instance_create(x, 0, obj_speech_bubble)
    with (obj_speech_bubble)
    {
        MAXSTR = 0
        STR[0] = "...!"
    }
}

