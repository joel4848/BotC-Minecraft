# Main function to initiate the voting process

# Lock players to seats
scoreboard players set #vote_running temp 1
function voting:lock_to_seats

# Get the nominated player's seat number
execute unless score #storyteller Nominated matches 1 run scoreboard players operation #nominated temp = @e[scores={Nominated=1},limit=1] Player
execute if score #storyteller Nominated matches 1 run scoreboard players set #nominated temp -17
scoreboard players operation #nominated temp *= #-1 const

# Get player count for wraparound logic
scoreboard players operation #player_count temp = player_count PlayerCount

# Calculate starting player (next clockwise from nominated)
scoreboard players operation #start_player temp = #nominated temp
scoreboard players add #start_player temp 1

# Handle wraparound if starting player exceeds player count
execute unless score #storyteller Nominated matches 1 run execute if score #start_player temp > #player_count temp run scoreboard players set #start_player temp 1
execute if score #storyteller Nominated matches 1 run scoreboard players set #start_player temp 1

# Initialize vote counter
scoreboard players set #current_player temp 0
scoreboard players set #vote_tally temp 0
scoreboard players reset #current_votelight temp
scoreboard players set #start_player_passed temp 0

# Start announcing who voted:

execute if score #og_enabled temp matches 0 run tellraw @a [{"color":"aqua","text":"These players voted","underlined":true},{"color":"aqua","text":":","underlined":false}]
execute if score #og_enabled temp matches 1 run tellraw @a [{"color":"red","text":"The Organ Grinder obscures the vote...","underlined":false}]
execute if score #og_enabled temp matches 1 run tellraw @a[scores={Storyteller=1}] [{"color":"aqua","text":"These players voted","underlined":true},{"color":"aqua","text":":","underlined":false},{"color":"red","text":" (hidden from players by OG)","underlined":false}]


# ------------------------------------------------------


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


# ------------------------------------------------------

# OG mode

# Disable hide ghost votes if OG mode enabled

execute if score #og_enabled temp matches 1 run function extras:organ_grinder/hide_ghost_votes/og_hgv_disable

# Silence votelight interactions if OG mode enabled

execute if score #og_enabled temp matches 1 run scoreboard players set #og_silence_votelights temp 1

# Lock players to seats

scoreboard players set #vote_running temp 1
function voting:lock_to_seats

# Start Countdown

function voting:countdown_3

execute unless score #vote_testing temp matches 1 run schedule function voting:countdown_2 30t
execute if score #vote_testing temp matches 1 run schedule function voting:countdown_2 5t
# 30t

execute unless score #vote_testing temp matches 1 run schedule function voting:countdown_1 60t
execute if score #vote_testing temp matches 1 run schedule function voting:countdown_1 10t
# 60t

execute unless score #vote_testing temp matches 1 run schedule function voting:countdown_now 90t
execute if score #vote_testing temp matches 1 run schedule function voting:countdown_now 15t

execute if score #nominated temp = player_count PlayerCount run execute unless score #vote_testing temp matches 1 run schedule function voting:call_move_big_hand_skip 95t
execute if score #nominated temp = player_count PlayerCount run execute if score #vote_testing temp matches 1 run schedule function voting:call_move_big_hand_skip 15t
# 90t

# execute unless score #vote_testing temp matches 1 run schedule function voting:start_vote 120t
# execute if score #vote_testing temp matches 1 run schedule function voting:start_vote 20t

execute unless score #vote_testing temp matches 1 run schedule function voting:vote_sequence 120t
execute if score #vote_testing temp matches 1 run schedule function voting:vote_sequence 20t
# 120t

execute unless score #vote_testing temp matches 1 run schedule function setup:reset_title_times 140t
execute if score #vote_testing temp matches 1 run schedule function setup:reset_title_times 25t
# 140t