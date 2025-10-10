execute if score @a[scores={Marked=1},limit=1] Alive matches 1 run execute as @a[scores={Marked=1}] run team join Alive
execute if score @a[scores={Marked=1},limit=1] Alive matches 0 run execute as @a[scores={Marked=1}] run team join Dead

effect clear @a[scores={Marked=1}] glowing
scoreboard players set @a Marked 0

scoreboard players set #has_anyone_been_marked temp 0