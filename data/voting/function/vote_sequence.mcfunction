# Recursive function to handle each player's vote in clockwise order

# First retract the piston (remove redstone power)
function voting:retract_piston

# Wait for piston to fully retract, then count the vote
schedule function voting:count_vote 4t

# Increment counter for next iteration
scoreboard players add #current_player temp 1

# Continue if we haven't processed all players yet (with longer delay to account for piston + counting time)
execute if score #current_player temp < #player_count temp run schedule function voting:vote_sequence 25t

# If we've processed all players, evaluate the results (also with delay)
execute if score #current_player temp >= #player_count temp run schedule function voting:evaluate_vote_result 10t