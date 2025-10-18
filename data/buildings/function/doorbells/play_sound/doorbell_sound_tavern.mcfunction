

playsound minecraft:entity.player.levelup master @a[x=143,y=92,z=7,dx=-18,dy=50,dz=32] 141 93 19 100



scoreboard players set #doorbell_tavern_cooldown temp 1
schedule function buildings:doorbells/cooldown_reset/doorbell_cooldown_reset_tavern 3s
