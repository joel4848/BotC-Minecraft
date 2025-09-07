# Calculate which player we're going to process
scoreboard players operation #current_seat temp = #start_player temp
scoreboard players operation #current_seat temp += #current_player temp

# Handle wraparound for seat numbers
execute if score #current_seat temp > #player_count temp run scoreboard players operation #current_seat temp -= #player_count temp

# Store current seat in a more convenient variable
scoreboard players operation #seat temp = #current_seat temp


# Move big hand

execute unless score #current_votelight temp = #nominated temp run function voting:call_move_big_hand

# Recursive function to handle each player's vote in clockwise order

# First retract the piston (remove redstone power)

schedule function voting:retract_piston 5t

# Wait for piston to fully retract, then count the vote

schedule function voting:count_vote 10t
schedule function voting:increment_current_player_counter 5t

# Continue if we haven't processed all players yet (with longer delay to account for piston + counting time)

execute if score #current_player temp < #player_count temp run schedule function voting:vote_sequence 25t

# If we've processed all players, evaluate the results (also with delay)

execute if score #current_player temp >= #player_count temp run schedule function voting:evaluate_vote_result 20t

# tellraw @a [{"text":"[Current Player] - ","color":"yellow"},{"score":{"name":"#current_player","objective":"temp"}}]
# tellraw @a [{"text":"[Current Seat] - ","color":"yellow"},{"score":{"name":"#current_seat","objective":"temp"}}]
# tellraw @a [{"text":"[Seat] - ","color":"yellow"},{"score":{"name":"#seat","objective":"temp"}}]
# tellraw @a [{"text":"[Current Votelight] - ","color":"yellow"},{"score":{"name":"#current_votelight","objective":"temp"}}]

tellraw @a [{"text":"-------------------------------- ","color":"dark_blue"}]
# tellraw @a [{"text":"[Start Player] - ","color":"yellow"},{"score":{"name":"#start_player","objective":"temp"}}]
# tellraw @a [{"text":"[Vote Tally] - ","color":"yellow"},{"score":{"name":"#vote_tally","objective":"temp"}}]
tellraw @a [{"text":"[Current Votelight] - ","color":"yellow"},{"score":{"name":"#current_votelight","objective":"temp"}}]
tellraw @a [{"text":"[Storage Votelight] - ","color":"yellow"},{"nbt":"current_votelight","storage":"joelbotc"}]
tellraw @a [{"text":"[Current Player] - ","color":"yellow"},{"score":{"name":"#current_player","objective":"temp"}}]
tellraw @a [{"text":"[Current Seat] - ","color":"yellow"},{"score":{"name":"#current_seat","objective":"temp"}}]
# tellraw @a [{"text":"[Seat] - ","color":"yellow"},{"score":{"name":"#seat","objective":"temp"}}]
