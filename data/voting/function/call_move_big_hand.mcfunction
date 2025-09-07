execute if score #current_seat temp matches 1.. run scoreboard players operation #current_votelight temp = #current_seat temp
# scoreboard players add #current_votelight temp 1

execute store result storage joelbotc current_votelight int 1 run scoreboard players get #current_votelight temp

function voting:move_big_hand with storage joelbotc