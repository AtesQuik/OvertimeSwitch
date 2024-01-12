if (headupdown == 0)
{
    if (headbob < 12)
        headbob += 0.5
    else
        headupdown = 1
}
if (headupdown == 1)
{
    if (headbob > 0)
        headbob -= 0.5
    else
        headupdown = 0
}
eye1xshake = irandom_range(-2, 2)
eye1yshake = irandom_range(-2, 2)
eye2xshake = irandom_range(-2, 2)
eye2yshake = irandom_range(-2, 2)

