scr_enemy_variables()
enemyname = "Misha"
enemyquip = "The strongest man alive."
if instance_exists(obj_eli_battle)
    enemyinfo = "Way stronger thanks to Eli."
else
    enemyinfo = "Can NOT be hired."
enemyhealth = 100
maxhealth = 100
sparemeter = 100
if instance_exists(obj_eli_battle)
    enemyattack = 15
else
    enemyattack = 4
enemydefense = 2
giantdamagebar = 1
xpreceive = 100
cashreceive = 0
act1 = "Talk"
act2 = "Talk"
act3 = "Talk"
act4 = "???"
healthysprite = 549
hurtsprite = 549
downsprite = 549
shaking = 0
upordown = 0
heads = 2
attackchance = choose(1, 2, 3)
blackalpha = 0
image_speed = 0.2
geno = 0
isdying = 0
punching = 0
lowhp = 0
punchstop = 0

