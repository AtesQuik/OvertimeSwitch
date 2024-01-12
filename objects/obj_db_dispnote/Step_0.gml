if (reading == 1 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}
if (!instance_exists(obj_text_box))
    reading = 0

