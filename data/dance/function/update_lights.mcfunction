
execute if score layer dance_settings matches 1 run execute as @e[type=marker,tag=dance1] at @s run place template minecraft:layer2-1 ~ ~-1 ~
execute if score layer dance_settings matches 2 run execute as @e[type=marker,tag=dance1] at @s run place template minecraft:layer2-2 ~ ~-1 ~
execute if score layer dance_settings matches 3 run execute as @e[type=marker,tag=dance1] at @s run place template minecraft:layer3-1 ~ ~-1 ~
execute if score layer dance_settings matches 4 run execute as @e[type=marker,tag=dance1] at @s run place template minecraft:layer3-2 ~ ~-1 ~
execute if score layer dance_settings matches 5 run execute as @e[type=marker,tag=dance1] at @s run place template minecraft:layer4-1 ~ ~-1 ~
execute if score layer dance_settings matches 6 run execute as @e[type=marker,tag=dance1] at @s run place template minecraft:layer4-2 ~ ~-1 ~
execute if score layer dance_settings matches 7 run execute as @e[type=marker,tag=dance1] at @s run place template minecraft:layer4-3 ~ ~-1 ~
execute if score layer dance_settings matches 8 run execute as @e[type=marker,tag=dance1] at @s run place template minecraft:layer4-4 ~ ~-1 ~
execute if score layer dance_settings matches 9 run execute as @e[type=marker,tag=dance1] at @s run place template minecraft:layer4-5 ~ ~-1 ~
execute if score layer dance_settings matches 10 run execute as @e[type=marker,tag=dance1] at @s run place template minecraft:layer4-6 ~ ~-1 ~
execute if score layer dance_settings matches 11 run execute as @e[type=marker,tag=dance1] at @s run place template minecraft:layer4-7 ~ ~-1 ~
execute if score layer dance_settings matches 12 run execute as @e[type=marker,tag=dance1] at @s run place template minecraft:layer5 ~ ~-1 ~
execute if score layer dance_settings matches 13 run execute as @e[type=marker,tag=dance1] at @s run place template minecraft:layer6 ~ ~-1 ~

# Increment layer by 1
scoreboard players add layer dance_settings 1

# If layer is 13, reset layer to 1
execute if score layer dance_settings matches 14.. run scoreboard players set layer dance_settings 1

