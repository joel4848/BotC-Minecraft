execute if score #current_seat temp matches 1.. run scoreboard players operation #current_votelight temp = #current_seat temp
# scoreboard players add #current_votelight temp 1

execute store result storage joelbotc current_votelight int 1 run scoreboard players get #current_votelight temp

# Rotate big hand to next seat unless it is at last occupied seat

# execute unless score #current_votelight temp matches 1 run function voting:move_big_hand with storage joelbotc

# Rotate big hand through unoccupied seats

execute if score player_count PlayerCount matches 5 run function voting:cycle_empty_seats/player_count_5
execute if score player_count PlayerCount matches 6 run function voting:cycle_empty_seats/player_count_6
execute if score player_count PlayerCount matches 7 run function voting:cycle_empty_seats/player_count_7
execute if score player_count PlayerCount matches 8 run function voting:cycle_empty_seats/player_count_8
execute if score player_count PlayerCount matches 9 run function voting:cycle_empty_seats/player_count_9
execute if score player_count PlayerCount matches 10 run function voting:cycle_empty_seats/player_count_10
execute if score player_count PlayerCount matches 11 run function voting:cycle_empty_seats/player_count_11
execute if score player_count PlayerCount matches 12 run function voting:cycle_empty_seats/player_count_12
execute if score player_count PlayerCount matches 13 run function voting:cycle_empty_seats/player_count_13
execute if score player_count PlayerCount matches 14 run function voting:cycle_empty_seats/player_count_14
execute if score player_count PlayerCount matches 15 run function voting:cycle_empty_seats/player_count_15
