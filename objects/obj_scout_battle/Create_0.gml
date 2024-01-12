scr_enemy_variables()
enemyname = "Scout"
enemyquip = "A boy from nowhere."
enemyinfo = "Can't stop loving you."
enemyhealth = 30
maxhealth = 30
if (global.genocide == 0)
    sparemeter = 40
else
    sparemeter = 5
enemyattack = 4
enemydefense = 2
giantdamagebar = 1
xpreceive = 100
cashreceive = 0
act1 = "Cook"
act2 = "Movie"
act3 = "Song"
act4 = "???"
healthysprite = 514
hurtsprite = 514
downsprite = 514
attackchance = choose(1, 2)
image_speed = 0.2
isdying = 0
global.mcprogress = 2
geno = 0
dispthere = 0
lastconvo = 0
blackalpha = 0
shakex = 1
shakey = 1
headshake = 0
headchange = 0
if (global.genocide == 1)
    heads = 11
else
    heads = 0
if (global.genocide == 0)
    alarm[11] = 60
if (global.genocide == 0)
    hurtheads = choose(1, 2, 3, 6, 7, 8, 10)
else
    hurtheads = 11
extraroom = 0
legpose = 0
whichleg = 0
legchange = 0
leg1 = 0
leg1angle = 0
leg2 = 0
leg2angle = 0
arm1 = 0
arm1angle = 0
arm2 = 0
arm2angle = 0
nochange = 0
sparesyou = 0

