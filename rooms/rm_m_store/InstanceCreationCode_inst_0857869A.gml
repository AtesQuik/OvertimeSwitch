roomname = 74
xpos = 220
ypos = 80
pdirection = 0
item1 = "Whiskey"
if (global.genocide == 1)
    price1 = 180
else
    price1 = 60
text1 = "Heals 26 HP#Pass the#whiskey."
item2 = "St.Ale"
if (global.genocide == 1)
    price2 = 150
else
    price2 = 50
text2 = "Heals 18 HP#On sale,#to no#avail."
STR[1] = "* Mate, just because I set#  up a store in a cave doesn't#  mean I am so desperate to#  buy useless guff."
if (global.genocide == 1)
{
    STR[3] = "* Prices are still increased."
    STR[4] = "* Stop killing my customers,#  and I'll lower them again."
    STR[5] = "* Now what do you want?"
}
else
{
    STR[3] = "* What's wrong?#* Are you surprised that#  I have another shop in#  these abandoned mines?"
    STR[4] = "* I gotta make money#  somehow, mate!#* Also, you're here too, so#  that's one more customer#  than none at all!"
    STR[5] = "* That reminds me...#* Are you gonna buy something,#  or are you just gonna waste#  my time and money?"
}
