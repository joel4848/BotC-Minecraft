

playsound minecraft:entity.player.levelup master @a[x=159,y=92,z=-24,dx=25,dy=30,dz=-50] 177.00 91.08 -23.72 100



scoreboard players set #doorbell_cemetary_cooldown temp 1
schedule function buildings:doorbells/cooldown_reset/doorbell_cooldown_reset_cemetary 3s
