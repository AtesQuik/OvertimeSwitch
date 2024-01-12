roomname = 107
xpos = 150
ypos = 100
pdirection = 0
item1 = "FrChick"
if (global.genocide == 1)
    price1 = 240
else
    price1 = 80
text1 = "Heals 35 HP#Fried#chicken in#a bucket."
item2 = "CoBread"
if (global.genocide == 1)
    price2 = 200
else
    price2 = 65
text2 = "Heals 28 HP#May contain#corn and#bread."
STR[1] = "* I have an idea!#* How about you sell me your#  Australium, and I will#  exchange you various items#  for it?"
if (global.genocide == 1)
{
    STR[3] = "* You're still killing#  everyone, and I am still#  increasing my prices."
    STR[4] = "* Does that still surprise#  you?"
    STR[5] = "* Now quit talking already.#* I am seriously considering#  charging you for talking#  to me, mate."
}
else
{
    STR[3] = "* Why yes, young lady!#* I have another shop in#  Dustbowl!"
    STR[4] = "* There are mercenaries#  everywhere, and they're#  good customers!#* No one needs health items#  more than they do!"
    STR[5] = "* I don't even mind running#  back and forth between my#  shops for them or you!#* It's a good workout, too."
}
