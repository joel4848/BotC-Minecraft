kill @e[tag=questionmark]
execute at @s run setblock ~ ~ ~ minecraft:waxed_oxidized_copper_bulb
execute at @s run setblock ~ ~-1 ~ air replace
execute at @s run setblock ~ ~-3 ~ air replace
execute at @s run setblock ~ ~-2 ~ minecraft:sticky_piston[extended=true,facing=up] destroy
execute at @s run setblock ~ ~-3 ~ minecraft:redstone_block
kill @e[name="Sticky Piston"]