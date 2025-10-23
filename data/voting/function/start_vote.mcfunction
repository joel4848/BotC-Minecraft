# say Ran start vote
# 
# # Main function to initiate the voting process
# 
# # Lock players to seats
# scoreboard players set #vote_running temp 1
# function voting:lock_to_seats
# 
# # Get the nominated player's seat number
# execute unless score #storyteller Nominated matches 1 run scoreboard players operation #nominated temp = @e[scores={Nominated=1},limit=1] Player
# execute if score #storyteller Nominated matches 1 run scoreboard players set #nominated temp -17
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
# execute unless score #storyteller Nominated matches 1 run execute if score #start_player temp > #player_count temp run scoreboard players set #start_player temp 1
# execute if score #storyteller Nominated matches 1 run scoreboard players set #start_player temp 1
# 
# # Initialize vote counter
# scoreboard players set #current_player temp 0
# scoreboard players set #vote_tally temp 0
# scoreboard players reset #current_votelight temp
# scoreboard players set #start_player_passed temp 0
# 
# # Start announcing who voted:
# 
# execute if score #og_enabled temp matches 0 run tellraw @a [{"color":"aqua","text":"These players voted","underlined":true},{"color":"aqua","text":":\n","underlined":false}]
# execute if score #og_enabled temp matches 1 run tellraw @a [{"color":"red","text":"The Organ Grinder obscures the vote...","underlined":false}]
# execute if score #og_enabled temp matches 1 run tellraw @a[scores={Storyteller=1}] [{"color":"aqua","text":"These players voted","underlined":true},{"color":"aqua","text":":\n","underlined":false}]
# 
# # Start the voting sequence
# function voting:vote_sequence