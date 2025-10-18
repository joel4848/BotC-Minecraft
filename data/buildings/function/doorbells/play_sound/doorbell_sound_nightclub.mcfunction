

playsound minecraft:entity.player.levelup master @a[x=183,y=94,z=20,dx=-29,dy=26,dz=38] 167.58 95.00 23.44 100



scoreboard players set #doorbell_nightclub_cooldown temp 1
schedule function buildings:doorbells/cooldown_reset/doorbell_cooldown_reset_nightclub 3s
