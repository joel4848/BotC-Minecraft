scoreboard players set @a[scores={Player=-9}] Alive 1
execute as @a[scores={Player=-9}] run team join Alive

execute as @e[tag=votelight9] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_copper_bulb[lit=false]

