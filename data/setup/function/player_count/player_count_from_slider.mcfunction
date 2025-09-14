scoreboard players set #6 PlayerCount 6
scoreboard players set #17 PlayerCount 17
scoreboard players operation player_count_plus_1 PlayerCount = player_count PlayerCount
scoreboard players add player_count_plus_1 PlayerCount 1
execute if score player_count_plus_1 PlayerCount < #6 PlayerCount run scoreboard players set player_count_plus_1 PlayerCount 6
execute if score player_count_plus_1 PlayerCount >= #17 PlayerCount run scoreboard players set player_count_plus_1 PlayerCount 17
execute store result storage joelbotc player_count int 1 run scoreboard players get player_count PlayerCount
execute store result storage joelbotc player_count_plus_1 int 1 run scoreboard players get player_count_plus_1 PlayerCount

function setup:player_count/replace_wanted_votelights with storage joelbotc
function setup:player_count/remove_unwanted_votelights with storage joelbotc
schedule function voting:reset_vote 10t

function setup:number_list_empty_seats

