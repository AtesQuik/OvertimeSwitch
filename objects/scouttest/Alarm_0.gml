arm1 = choose(0, 1, 2, 3, 4)
arm2 = choose(0, 1, 2, 3, 4)
heads = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
legchange = 0
leg1angle = 0
leg2angle = 0
arm1angle = 0
arm2angle = 0
legpose = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
if (legpose == 0)
{
    whichleg = 0
    leg1 = 0
    leg2 = 0
    extraroom = 0
}
if (legpose == 1)
{
    whichleg = 2
    leg1 = 0
    leg2 = 4
    extraroom = 0
}
if (legpose == 2)
{
    whichleg = 1
    leg1 = 3
    leg2 = 0
    extraroom = 0
}
if (legpose == 3)
{
    whichleg = 1
    leg1 = 4
    leg2 = 1
    extraroom = 7
}
if (legpose == 4)
{
    whichleg = 2
    leg1 = 1
    leg2 = 4
    extraroom = 7
}
if (legpose == 5)
{
    whichleg = 2
    leg1 = 2
    leg2 = 4
    extraroom = 0
}
if (legpose == 6)
{
    whichleg = 2
    leg1 = 2
    leg2 = 0
    extraroom = 0
}
if (legpose == 7)
{
    whichleg = 1
    leg1 = 3
    leg2 = 2
    extraroom = 0
}
if (legpose == 8)
{
    whichleg = 2
    leg1 = 1
    leg2 = 2
    extraroom = 7
}
if (legpose == 9)
{
    whichleg = 1
    leg1 = 4
    leg2 = 0
    extraroom = 0
}
action_set_alarm(timer, 0)

