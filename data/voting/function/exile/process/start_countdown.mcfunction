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
# 90t

execute unless score #vote_testing temp matches 1 run schedule function voting:exile/process/start_vote 120t
execute if score #vote_testing temp matches 1 run schedule function voting:exile/process/start_vote 20t
# 120t

execute unless score #vote_testing temp matches 1 run schedule function setup:reset_title_times 140t
execute if score #vote_testing temp matches 1 run schedule function setup:reset_title_times 25t
# 140t