effect clear @a[scores={Nominated=1}] glowing
execute if score #storyteller Nominated matches 1 run scoreboard players set #storyteller Nominated 0
execute unless score @a[scores={Storyteller=1},limit=1] Marked matches 1 run effect clear @a[scores={Storyteller=1}] glowing
execute if score @a[scores={Nominated=1},limit=1] Alive matches 1 run team join Alive @a[scores={Nominated=1},limit=1]
execute if score @a[scores={Nominated=1},limit=1] Alive matches 0 run team join Dead @a[scores={Nominated=1},limit=1]
scoreboard players set @a Nominated 0
data remove storage minecraft:joelbotc nominated_player

function voting:reset_vote