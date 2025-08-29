# OG mode

# Disable hide ghost votes if OG mode enabled

execute if score #og_enabled temp matches 1 run function extras:organ_grinder/hide_ghost_votes/og_hgv_disable

# Start Countdown

function voting:countdown_3

schedule function voting:countdown_2 30t
# 30t

schedule function voting:countdown_1 60t
# 60t

schedule function voting:countdown_now 90t
# 90t

schedule function voting:start_vote 120t
# 120t

schedule function setup:reset_title_times 140t
# 140t