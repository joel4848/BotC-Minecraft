execute as @a[scores={Marked=1}] at @s run particle dust_color_transition{from_color:[0.639,0.000,0.000],scale:1,to_color:[1.000,0.000,0.000]} ~ ~4 ~ 0.1 1 0.1 3 2 normal

execute if score #storyteller Nominated matches 1 run execute as @a[scores={Storyteller=1}] at @s run particle dust_color_transition{from_color:[0.639,0.000,0.000],scale:1,to_color:[1.000,0.000,0.000]} ~ ~4 ~ 0.1 1 0.1 3 2 normal

execute if entity @a[scores={Marked=1}] run schedule function nomination:marked_particles 1t replace