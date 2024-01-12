x = global.soulxposition
y = global.soulyposition
image_alpha = 0
damagedone = 0
spd = 8
onplayer = 0
startx = x
bulletcount = 0
if (startx < 160)
{
    bulletx = 72
    bullety = 64
}
else
{
    bulletx = 240
    bullety = 64
}
action_set_alarm(15, 0)

