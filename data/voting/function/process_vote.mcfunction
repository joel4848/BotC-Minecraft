# Processes an individual player's vote

# Calculate which player we're currently processing

scoreboard players operation #current_seat temp = #start_player temp
scoreboard players operation #current_seat temp += #current_player temp

# Handle wraparound for seat numbers

execute if score #current_seat temp > #player_count temp run scoreboard players operation #current_seat temp -= #player_count temp

# Store current seat in a more convenient variable

scoreboard players operation #seat temp = #current_seat temp

# Retract the piston for this seat by removing redstone power

execute as @e[tag=votelight1] if score #seat temp matches 1 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight2] if score #seat temp matches 2 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight3] if score #seat temp matches 3 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight4] if score #seat temp matches 4 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight5] if score #seat temp matches 5 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight6] if score #seat temp matches 6 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight7] if score #seat temp matches 7 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight8] if score #seat temp matches 8 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight9] if score #seat temp matches 9 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight10] if score #seat temp matches 10 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight11] if score #seat temp matches 11 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight12] if score #seat temp matches 12 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight13] if score #seat temp matches 13 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight14] if score #seat temp matches 14 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight15] if score #seat temp matches 15 run execute at @s run setblock ~ ~-3 ~ air
execute as @e[tag=votelight16] if score #seat temp matches 16 run execute at @s run setblock ~ ~-3 ~ air

# Check if the vote light shows a positive vote and increment tally

execute as @e[tag=votelight1] if score #seat temp matches 1 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight2] if score #seat temp matches 2 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight3] if score #seat temp matches 3 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight4] if score #seat temp matches 4 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight5] if score #seat temp matches 5 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight6] if score #seat temp matches 6 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight7] if score #seat temp matches 7 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight8] if score #seat temp matches 8 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight9] if score #seat temp matches 9 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight10] if score #seat temp matches 10 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight11] if score #seat temp matches 11 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight12] if score #seat temp matches 12 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight13] if score #seat temp matches 13 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight14] if score #seat temp matches 14 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight15] if score #seat temp matches 15 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight16] if score #seat temp matches 16 run execute at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1

# Also check for lit waxed oxidised copper bulb (dead player ghost vote)

execute as @e[tag=votelight1] if score #seat temp matches 1 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight2] if score #seat temp matches 2 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight3] if score #seat temp matches 3 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight4] if score #seat temp matches 4 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight5] if score #seat temp matches 5 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight6] if score #seat temp matches 6 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight7] if score #seat temp matches 7 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight8] if score #seat temp matches 8 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight9] if score #seat temp matches 9 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight10] if score #seat temp matches 10 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight11] if score #seat temp matches 11 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight12] if score #seat temp matches 12 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight13] if score #seat temp matches 13 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight14] if score #seat temp matches 14 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight15] if score #seat temp matches 15 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
execute as @e[tag=votelight16] if score #seat temp matches 16 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #vote_tally temp 1
