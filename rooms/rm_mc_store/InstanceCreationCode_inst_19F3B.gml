roomname = 125
xpos = 340
ypos = 160
pdirection = 0
item1 = "N.Waste"
if (global.genocide == 1)
    price1 = 270
else
    price1 = 90
text1 = "Heals 40 HP#Comes in a#free cup!"
item2 = "Sandvich"
if (global.genocide == 1)
    price2 = 320
else
    price2 = 140
text2 = "Heals 50 HP#Don't run,#it's just#ham!"
item3 = "Badkit"
if (global.genocide == 1)
    price3 = 186
else
    price3 = 62
text3 = "Heals 15 HP#But at what#cost?"
STR[1] = "* HAHAHAHA!#* Mate, if I ever needed#  anything, I'd tell one of#  the factory workers to #  make it for me!"
if (global.genocide == 1)
{
    STR[3] = "* Sure, let's talk about#  the weather!#* Let's talk about our#  hobbies!#* Our hopes and dreams!"
    STR[4] = "* Or we can talk about the#  fact that you numbnut#  killed almost everyone#  here in Dustbowl."
    STR[5] = "* Now shut up already.#* Give me your Australium,#  then you'll get your stuff.#* We both know that you need#  it."
}
else
{
    STR[3] = "* Welcome to the Mann Co.#  factory headquarters!#* Here is where we produce#  all of our wonderful#  products!"
    STR[4] = "* From weapons all the way#  to hats, we really do sell#  EVERYTHING.#* And people actually pay#  money for it!"
    STR[5] = "* The quality doesn't even#  matter to them!#* Hahaha! Can you believe it?#* Now, what do you want to#  buy?"
}
