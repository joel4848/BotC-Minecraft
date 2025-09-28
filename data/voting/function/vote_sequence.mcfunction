# Calculate which player we're going to process
scoreboard players operation #current_seat temp = #start_player temp
scoreboard players operation #current_seat temp += #current_player temp

# Handle wraparound for seat numbers
execute if score #current_seat temp > #player_count temp run scoreboard players operation #current_seat temp -= #player_count temp

scoreboard players operation #next_seat temp = #current_seat temp
scoreboard players add #next_seat temp 1
execute if score #next_seat temp > #player_count temp run scoreboard players operation #next_seat temp -= #player_count temp

scoreboard players operation #previous_seat temp = #current_seat temp
scoreboard players add #previous_seat temp 1
execute if score #previous_seat temp > #player_count temp run scoreboard players operation #previous_seat temp -= #player_count temp

# Store current seat in a more convenient variable
scoreboard players operation #seat temp = #current_seat temp

# Set big hand rotation speed

scoreboard players set #big_hand_speed temp 6

# Move big hand

# tellraw @a [{"text":"-------------------------------- ","color":"dark_blue"}]
# tellraw @a [{"text":"[Current Votelight] - ","color":"yellow"},{"score":{"name":"#current_votelight","objective":"temp"}}]
# tellraw @a [{"text":"[Current Votelight + 1] - ","color":"yellow"},{"score":{"name":"#current_votelight_plus_1","objective":"temp"}}]
# tellraw @a [{"text":"[Storage Votelight] - ","color":"yellow"},{"nbt":"current_votelight","storage":"joelbotc"}]
# tellraw @a [{"text":"[Current Player] - ","color":"yellow"},{"score":{"name":"#current_player","objective":"temp"}}]
# tellraw @a [{"text":"[Current Seat] - ","color":"yellow"},{"score":{"name":"#current_seat","objective":"temp"}}]

# execute unless score #current_seat temp = #start_player temp run 

########

# execute unless score #current_seat temp matches 1 run schedule function voting:call_move_big_hand 2t

execute unless score #next_seat temp > player_count PlayerCount run schedule function voting:call_move_big_hand 2t

########
# execute if score #start_player_passed temp matches 0 run execute unless score #current_seat temp matches 1 run schedule function voting:call_move_big_hand 2t
# execute unless score #current_seat temp = #start_player temp run execute unless score #current_seat temp matches 1 run say VS called Move Big Hand

# execute unless score #current_seat temp = #start_player temp run 
execute unless score #storyteller Nominated matches 1 run execute if score #next_seat temp matches 1 run function voting:call_move_big_hand_skip

# execute if score #start_player_passed temp matches 0 run execute if score #next_seat temp matches 1 run schedule function voting:call_move_big_hand_skip 7t
# execute unless score #current_seat temp = #start_player temp run execute if score #next_seat temp matches 1 run say VS called Move Big Hand Skip

# execute if score #current_seat temp = #nominated temp run scoreboard players set #start_player_passed temp 1

# Recursive function to handle each player's vote in clockwise order

# First retract the piston (remove redstone power)

schedule function voting:retract_piston 5t

# Wait for piston to fully retract, then count the vote

schedule function voting:count_vote 10t
schedule function voting:increment_current_player_counter 5t

# Continue if we haven't processed all players yet (with longer delay to account for piston + counting time)

execute unless score #storyteller Nominated matches 1 run execute unless score #vote_testing temp matches 1 run execute unless score #current_seat temp = #nominated temp run execute if score #current_player temp < #player_count temp run schedule function voting:vote_sequence 25t
execute unless score #storyteller Nominated matches 1 run execute if score #vote_testing temp matches 1 run execute unless score #current_seat temp = #nominated temp run execute if score #current_player temp < #player_count temp run schedule function voting:vote_sequence 10t

execute if score #storyteller Nominated matches 1 run execute unless score #vote_testing temp matches 1 run execute unless score #current_seat temp = player_count PlayerCount run execute if score #current_player temp < #player_count temp run schedule function voting:vote_sequence 25t
execute if score #storyteller Nominated matches 1 run execute if score #vote_testing temp matches 1 run execute unless score #current_seat temp = player_count PlayerCount run execute if score #current_player temp < #player_count temp run schedule function voting:vote_sequence 10t


# If we've processed all players, evaluate the results (also with delay)

# execute if score #current_player temp >= #player_count temp run schedule function voting:evaluate_vote_result 20t

execute unless score #storyteller Nominated matches 1 run execute if score #current_seat temp = #nominated temp run schedule function voting:evaluate_vote_result 25t
execute if score #storyteller Nominated matches 1 run execute if score #current_seat temp = player_count PlayerCount run schedule function voting:evaluate_vote_result 25t

# tellraw @a [{"text":"[Current Player] - ","color":"yellow"},{"score":{"name":"#current_player","objective":"temp"}}]
# tellraw @a [{"text":"[Current Seat] - ","color":"yellow"},{"score":{"name":"#current_seat","objective":"temp"}}]
# tellraw @a [{"text":"[Current Seat] - ","color":"yellow"},{"score":{"name":"player_count","objective":"PlayerCount"}}]
# tellraw @a [{"text":"[Seat] - ","color":"yellow"},{"score":{"name":"#seat","objective":"temp"}}]
# tellraw @a [{"text":"[Current Votelight] - ","color":"yellow"},{"score":{"name":"#current_votelight","objective":"temp"}}]


# tellraw @a [{"text":"[Start Player] - ","color":"yellow"},{"score":{"name":"#start_player","objective":"temp"}}]
# tellraw @a [{"text":"[Vote Tally] - ","color":"yellow"},{"score":{"name":"#vote_tally","objective":"temp"}}]

# tellraw @a [{"text":"[Seat] - ","color":"yellow"},{"score":{"name":"#seat","objective":"temp"}}]
