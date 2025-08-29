execute as @a[scores={Nominated=1}] at @s run particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~4 ~ 0.1 1 0.1 3 2 normal

execute if score #storyteller Nominated matches 1 run execute as @a[scores={Storyteller=1}] at @s run particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~4 ~ 0.1 1 0.1 3 2 normal

execute if entity @a[scores={Nominated=1}] run schedule function nomination:nominated_particles 1t replace

execute if score #storyteller Nominated matches 1 run schedule function nomination:nominated_particles 1t replace