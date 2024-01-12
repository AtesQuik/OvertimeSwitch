with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 9
        STR[0] = "* Hmmmmm..."
        STR[1] = "* All of this#  radioactive waste..."
        STR[2] = "* It's seeping into the#  groundwater, contaminating#  all of it..."
        STR[3] = "* The lakes in the mines#  were affected the most..."
        STR[4] = "* When the contamined#  water reacts with the#  minerals in the rocks,"
        STR[5] = "* it creates fumes that can#  cause hallucinations..."
        STR[6] = "* How do I know..?"
        STR[7] = "* Oh, I met a ghost wearing#  a tophat in the mines, he#  explained it to me..."
        STR[8] = "* Wait, did I really..?"
        STR[9] = "* Hmmmmm..."
    }
}
