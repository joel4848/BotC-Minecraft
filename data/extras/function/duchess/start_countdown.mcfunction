
# Lock players to seats

scoreboard players set #vote_running temp 1
function voting:lock_to_seats

# Start Countdown

function extras:duchess/countdown_3

execute unless score #vote_testing temp matches 1 run schedule function extras:duchess/countdown_2 30t


execute unless score #vote_testing temp matches 1 run schedule function extras:duchess/countdown_1 60t


execute unless score #vote_testing temp matches 1 run schedule function extras:duchess/process_volunteer_votelights 90t


execute unless score #vote_testing temp matches 1 run schedule function setup:reset_title_times 140t
execute if score #vote_testing temp matches 1 run schedule function setup:reset_title_times 25t
# 140t