# OG mode

# Disable hide ghost votes if OG mode enabled

execute if score #og_enabled temp matches 1 run function extras:organ_grinder/hide_ghost_votes/og_hgv_disable

# Lock players to seats
scoreboard players set #vote_running temp 1
function voting:lock_to_seats

# Start Countdown

function voting:countdown_3

schedule function voting:countdown_2 10t
# 30t

schedule function voting:countdown_1 20t
# 60t

schedule function voting:countdown_now 30t
# 90t

schedule function voting:start_vote 40t
# 120t

schedule function setup:reset_title_times 60t
# 140t

# Set default vote_sequence_time

data modify storage joelbotc vote_sequence_time set value 25