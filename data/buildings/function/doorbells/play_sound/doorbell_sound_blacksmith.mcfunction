

playsound minecraft:entity.player.levelup master @a[x=143,y=94,z=7,dx=-32,dy=10,dz=-14] 111.58 93.00 1.85 100



scoreboard players set #doorbell_blacksmith_cooldown temp 1
schedule function buildings:doorbells/cooldown_reset/doorbell_cooldown_reset_blacksmith 3s
