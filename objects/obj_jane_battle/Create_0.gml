scr_enemy_variables()
enemyname = "Jane Doe"
enemyquip = "Wannabe Soldier."
if (global.genocide == 0)
    enemyinfo = "Never surrenders. EVER."
else
    enemyinfo = "Never surrenders. Usually."
enemyhealth = 50
maxhealth = 50
sparemeter = 70
enemyattack = 4
enemydefense = 2
giantdamagebar = 1
cashreceive = 0
xpreceive = round(random_range(5, 9))
act1 = "Salute"
act2 = "Insult"
act3 = "Flee"
act4 = "???"
healthysprite = 453
hurtsprite = 453
downsprite = 453
image_speed = 0
geno = 0
isdying = 0
global.playerxpos = 330
global.playerypos = 160
diestoo = 0
reducing = 0
sparingyou = 0
global.previousroom = 63
global.dustbowlprogress = 1
global.playerxpos = 440
global.playerypos = 160
if (global.genocide == 0)
    global.battleapproachstring = "* You're Orange now."
else
    global.battleapproachstring = "* Jane surrenders."

