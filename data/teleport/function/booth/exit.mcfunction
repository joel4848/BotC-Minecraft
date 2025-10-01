teleport @a[scores={Storyteller=1}] @e[limit=1,tag=townsquare,type=marker]

# teleport players home if its the end of the day

execute as @a[scores={Player=-1,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house1,type=marker]
execute as @a[scores={Player=-2,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house2,type=marker]
execute as @a[scores={Player=-3,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house3,type=marker]
execute as @a[scores={Player=-4,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house4,type=marker]
execute as @a[scores={Player=-5,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house5,type=marker]
execute as @a[scores={Player=-6,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house6,type=marker]
execute as @a[scores={Player=-7,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house7,type=marker]
execute as @a[scores={Player=-8,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house8,type=marker]
execute as @a[scores={Player=-9,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house9,type=marker]
execute as @a[scores={Player=-10,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house10,type=marker]
execute as @a[scores={Player=-11,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house11,type=marker]
execute as @a[scores={Player=-12,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house12,type=marker]
execute as @a[scores={Player=-13,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house13,type=marker]
execute as @a[scores={Player=-14,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house14,type=marker]
execute as @a[scores={Player=-15,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house15,type=marker]
execute as @a[scores={Player=-16,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house16,type=marker]

# teleport players to townsquare if the day is ongoing

execute as @a[scores={Player=-1,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-2,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-3,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-4,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-5,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-6,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-7,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-8,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-9,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-10,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-11,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-12,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-13,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-14,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-15,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]
execute as @a[scores={Player=-16,Booth=1}] if score #tp_disabled temp matches 1 run teleport @s @e[limit=1,tag=townsquare,type=marker]

# reset storyteller booth

scoreboard players set @a Booth 0
