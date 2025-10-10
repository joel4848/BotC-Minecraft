

execute if score @a[scores={Player=-1},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit1] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-1}]
execute if score @a[scores={Player=-2},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit2] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-2}]
execute if score @a[scores={Player=-3},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit3] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-3}]
execute if score @a[scores={Player=-4},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit4] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-4}]
execute if score @a[scores={Player=-5},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit5] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-5}]
execute if score @a[scores={Player=-6},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit6] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-6}]
execute if score @a[scores={Player=-7},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit7] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-7}]
execute if score @a[scores={Player=-8},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit8] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-8}]
execute if score @a[scores={Player=-9},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit9] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-9}]
execute if score @a[scores={Player=-10},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit10] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-10}]
execute if score @a[scores={Player=-11},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit11] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-11}]
execute if score @a[scores={Player=-12},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit12] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-12}]
execute if score @a[scores={Player=-13},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit13] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-13}]
execute if score @a[scores={Player=-14},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit14] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-14}]
execute if score @a[scores={Player=-15},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit15] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-15}]
execute if score @a[scores={Player=-16},limit=1,sort=nearest] InHouse matches 0 run execute as @e[type=marker,tag=house_exit16] at @s run particle minecraft:end_rod ~ ~3 ~ 0.01 1.5 0.01 0.01 1 force @a[scores={Player=-16}]


execute as @a[scores={Player=..0}] if score @s InHouse matches 0 run schedule function buildings:entrance_particles 1t replace

