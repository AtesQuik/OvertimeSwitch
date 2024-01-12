roomname = 60
xpos = 530
ypos = 120
pdirection = 0
item1 = "Syringe"
if (global.genocide == 1)
    price1 = 45
else
    price1 = 15
text1 = "Heals 10 HP#I found it#lying#outside."
item2 = "Badkit"
if (global.genocide == 1)
    price2 = 120
else
    price2 = 40
text2 = "Heals 15 HP#But at what#cost?"
if (global.genocide == 1)
{
    STR[3] = "* Why is everything so#  expensive, you ask?"
    STR[4] = "* You've killed one half of my#  customers and scared away#  the other half!#* That's why I increased#  the prices!"
    STR[5] = "* You can consider yourself#  lucky I am not charging you#  for just standing there!"
}
