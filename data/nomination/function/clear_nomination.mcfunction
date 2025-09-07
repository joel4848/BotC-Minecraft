effect clear @a[scores={Nominated=1}] glowing
execute if score @a[scores={Nominated=1},limit=1] Alive matches 1 run team join Alive @a[scores={Nominated=1},limit=1]
execute if score @a[scores={Nominated=1},limit=1] Alive matches 0 run team join Dead @a[scores={Nominated=1},limit=1]
scoreboard players set @a Nominated 0

function voting:reset_vote