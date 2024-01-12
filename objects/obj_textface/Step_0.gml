with (obj_text_box)
{
    if (POS < (string_length(CSTR) + 1))
        other.image_speed = 0.3
    else
    {
        other.image_speed = 0
        other.image_index = 0
    }
}
if (!instance_exists(obj_text_box))
    instance_destroy()

