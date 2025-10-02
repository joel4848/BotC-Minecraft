execute at @s run setblock ~ ~-1 ~ minecraft:reinforced_deepslate
execute at @s run setblock ~ ~-2 ~ minecraft:sticky_piston[extended=false,facing=up]
execute at @s run setblock ~ ~ ~ air
kill @e[tag=questionmark]

# tellraw @a "test"