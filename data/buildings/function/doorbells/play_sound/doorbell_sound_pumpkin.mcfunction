

playsound minecraft:entity.player.levelup master @a[x=140,y=94,z=-23,dx=11,dy=8,dz=-17,] 111.58 93.00 1.85 100



scoreboard players set #doorbell_pumpkin_cooldown temp 1
schedule function buildings:doorbells/cooldown_reset/doorbell_cooldown_reset_pumpkin 3s
