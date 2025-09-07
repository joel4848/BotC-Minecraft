execute at @s run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
setblock ~ ~-1 ~ air replace
setblock ~ ~-2 ~ sticky_piston[extended=false,facing=up] replace
# execute at @s run setblock ~ ~-3 ~ redstone_block
kill @e[type=item,name="Sticky Piston"]