

playsound minecraft:entity.player.levelup master @a[x=193,y=94,z=12,dx=27,dy=91,dz=-25,] 177.00 91.08 -23.72 100



scoreboard players set #doorbell_clocktower_cooldown temp 1
schedule function buildings:doorbells/cooldown_reset/doorbell_cooldown_reset_clocktower 3s
