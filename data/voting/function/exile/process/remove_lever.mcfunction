# Set lit lamps to temporary blocks

execute as @e[tag=votelight1] if score #seat temp matches 1 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight2] if score #seat temp matches 2 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight3] if score #seat temp matches 3 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight4] if score #seat temp matches 4 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight5] if score #seat temp matches 5 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight6] if score #seat temp matches 6 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight7] if score #seat temp matches 7 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight8] if score #seat temp matches 8 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight9] if score #seat temp matches 9 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight10] if score #seat temp matches 10 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight11] if score #seat temp matches 11 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight12] if score #seat temp matches 12 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight13] if score #seat temp matches 13 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight14] if score #seat temp matches 14 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight15] if score #seat temp matches 15 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block
execute as @e[tag=votelight16] if score #seat temp matches 16 run execute at @s run execute if block ~ ~ ~ redstone_lamp[lit=true] run setblock ~ ~ ~ gold_block

# Remove the lever for this seat

execute as @e[tag=votelight1] if score #seat temp matches 1 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight2] if score #seat temp matches 2 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight3] if score #seat temp matches 3 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight4] if score #seat temp matches 4 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight5] if score #seat temp matches 5 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight6] if score #seat temp matches 6 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight7] if score #seat temp matches 7 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight8] if score #seat temp matches 8 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight9] if score #seat temp matches 9 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight10] if score #seat temp matches 10 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight11] if score #seat temp matches 11 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight12] if score #seat temp matches 12 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight13] if score #seat temp matches 13 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight14] if score #seat temp matches 14 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight15] if score #seat temp matches 15 run execute at @s run setblock ~ ~1 ~ air
execute as @e[tag=votelight16] if score #seat temp matches 16 run execute at @s run setblock ~ ~1 ~ air

# Revert temporary blocks to lit lamps

execute as @e[tag=votelight1] if score #seat temp matches 1 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight2] if score #seat temp matches 2 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight3] if score #seat temp matches 3 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight4] if score #seat temp matches 4 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight5] if score #seat temp matches 5 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight6] if score #seat temp matches 6 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight7] if score #seat temp matches 7 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight8] if score #seat temp matches 8 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight9] if score #seat temp matches 9 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight10] if score #seat temp matches 10 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight11] if score #seat temp matches 11 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight12] if score #seat temp matches 12 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight13] if score #seat temp matches 13 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight14] if score #seat temp matches 14 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight15] if score #seat temp matches 15 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[tag=votelight16] if score #seat temp matches 16 run execute at @s run execute if block ~ ~ ~ gold_block run setblock ~ ~ ~ redstone_lamp[lit=true]