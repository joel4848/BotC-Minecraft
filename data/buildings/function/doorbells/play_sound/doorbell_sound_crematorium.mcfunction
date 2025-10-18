

playsound minecraft:entity.player.levelup master @a[x=190,y=95,z=-25,dx=10,dy=12,dz=-32] 177.00 91.08 -23.72 100



scoreboard players set #doorbell_crematorium_cooldown temp 1
schedule function buildings:doorbells/cooldown_reset/doorbell_cooldown_reset_crematorium 3s
