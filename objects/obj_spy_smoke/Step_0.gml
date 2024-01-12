if (size < 0.5)
    size += 0.01
if (fadedin == 0)
{
    if (image_alpha < 1)
        image_alpha += 0.1
    else
    {
        fadedin = 1
        alarm[0] = 30
    }
}
if (fadedin == 2)
{
    if (image_alpha > 0)
        image_alpha -= 0.05
    else
        instance_destroy()
}
x += movedir
y += 3

