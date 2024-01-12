with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = obj_protagonist.prodirection
    instance_destroy()
}
progress = 1
with (instance_create(x, y, obj_text_box))
{
    textvoice = 96
    MAXSTR = 0
    FACESTR[0] = 651
    STR[0] = "* Hey there, mate.#* What are ya doin' here?"
}
