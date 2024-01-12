counter += 1
if (counter == 30)
    progress = 1
if (progress == 1)
{
    if (blackscreen > 0)
        blackscreen -= 0.01
}
if (counter == 300)
    progress = 2
if (progress == 2)
{
    if (endblack > 0)
        endblack -= 0.005
}
if (counter == 630)
    room_goto(rm_c_credits)

