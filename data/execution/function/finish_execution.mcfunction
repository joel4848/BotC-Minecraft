# setblock 167 91 2 minecraft:cobbled_deepslate

scoreboard players set #execution_running temp 0

scoreboard players set @a[scores={Marked=1}] Alive 0
team leave @a[scores={Marked=1}]
execute as @a[scores={Marked=1}] run execute unless score @s Storyteller matches 1 run team join Dead
execute as @a[scores={Marked=1}] run execute if score @s Storyteller matches 1 run team join Storyteller

effect clear @a[scores={Marked=1}] glowing
effect give @a[scores={Marked=1}] invisibility infinite 99 true
item replace entity @a[scores={Marked=1}] armor.head with minecraft:golden_helmet 1

scoreboard players set @a[scores={Marked=1}] Wheee 1

scoreboard players set @a[scores={Marked=1}] Marked 0