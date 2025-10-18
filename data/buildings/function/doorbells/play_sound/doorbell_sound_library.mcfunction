

playsound minecraft:entity.player.levelup master @a[x=142,y=93,z=-7,dx=-23,dy=23,dz=-23] 167.58 95.00 23.44 100



scoreboard players set #doorbell_library_cooldown temp 1
schedule function buildings:doorbells/cooldown_reset/doorbell_cooldown_reset_library 3s
