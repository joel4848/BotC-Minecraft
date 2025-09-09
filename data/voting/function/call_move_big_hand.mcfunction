execute if score #current_seat temp matches 1.. run scoreboard players operation #current_votelight temp = #current_seat temp
# scoreboard players add #current_votelight temp 1

# Set big hand rotation speed

scoreboard players set #big_hand_speed temp 6

execute store result storage joelbotc current_votelight int 1 run scoreboard players get #current_votelight temp

# Rotate big hand to next seat unless it is at last occupied seat

# say ----------------------------------------------
# tellraw @a ["seat score: ",{"score":{"name":"#seat","objective":"temp"}}]
# tellraw @a ["current_seat score: ",{"score":{"name":"#current_seat","objective":"temp"}}]
# tellraw @a ["current_votelight score: ",{"score":{"name":"#current_votelight","objective":"temp"}}]
# tellraw @a ["current_votelight NBT: ",{"nbt":"current_votelight","storage":"joelbotc"}]

# execute unless score #current_votelight temp = player_count PlayerCount run 
# execute unless score #current_votelight temp matches 1 run 
function voting:move_big_hand with storage joelbotc

# Rotate big hand through unoccupied seats




# execute if score #current_votelight temp matches 1 run execute if score player_count PlayerCount matches 15 run function voting:cycle_empty_seats/player_count_15


# execute if score #current_votelight temp matches 1 run execute if score player_count PlayerCount matches 9 run function voting:cycle_empty_seats/player_count_9
