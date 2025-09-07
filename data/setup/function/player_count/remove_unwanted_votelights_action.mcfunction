execute at @s run setblock ~ ~ ~ air replace
execute at @s run setblock ~ ~-2 ~ sticky_piston[extended=false,facing=up] replace
kill @e[type=item,name="Sticky Piston"]