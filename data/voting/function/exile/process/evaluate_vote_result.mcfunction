
# Evaluates the final vote tally and determines exile status

# Store the vote tally for the nominated player

execute as @e[scores={Nominated=1}] run scoreboard players operation @s VoteTally = #vote_tally temp

# Calculate how many votes are needed (half of all players, rounded up)

# Calculate half rounded up: (player_count PlayerCount + 1) / 2
scoreboard players operation #required_votes temp = player_count PlayerCount
scoreboard players add #required_votes temp 1
scoreboard players operation #required_votes temp /= #2 const

# Determine the outcome with clearer logic

execute if score #vote_tally temp < #required_votes temp run function voting:exile/process/insufficient_votes
execute if score #vote_tally temp >= #required_votes temp if score #vote_tally temp > #highest_previous temp run function voting:exile/process/exile


# Unlock players from seats

scoreboard players set #vote_running temp 0

