# # Main function to initiate the voting process
# 
# # Lock players to seats
# scoreboard players set #vote_running temp 1
# function voting:lock_to_seats
# 
# # Get the nominated player's seat number
# scoreboard players operation #nominated temp = @e[scores={Nominated=1},limit=1] Player
# scoreboard players operation #nominated temp *= #-1 const
# 
# # Get player count for wraparound logic
# scoreboard players operation #player_count temp = player_count PlayerCount
# 
# # Calculate starting player (next clockwise from nominated)
# scoreboard players operation #start_player temp = #nominated temp
# scoreboard players add #start_player temp 1
# 
# # Handle wraparound if starting player exceeds player count
# execute if score #start_player temp > #player_count temp run scoreboard players set #start_player temp 1
# 
# # Initialize vote counter
# scoreboard players set #current_player temp 0
# scoreboard players set #exile_vote_tally temp 0
# scoreboard players reset #current_votelight temp
# scoreboard players set #start_player_passed temp 0
# 
# # Start announcing who voted:
# 
# tellraw @a [{"color":"aqua","text":"These players voted","underlined":true},{"color":"aqua","text":":\n","underlined":false}]
# 
# # Start the voting sequence
# function voting:exile/process/vote_sequence