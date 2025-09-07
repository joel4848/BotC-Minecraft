# debug_status.mcfunction
tellraw @a [{"text":"-------------------------------- ","color":"dark_blue"}]
# tellraw @a [{"text":"[Start Player] - ","color":"yellow"},{"score":{"name":"#start_player","objective":"temp"}}]
# tellraw @a [{"text":"[Vote Tally] - ","color":"yellow"},{"score":{"name":"#vote_tally","objective":"temp"}}]
tellraw @a [{"text":"[Current Votelight] - ","color":"yellow"},{"score":{"name":"#current_votelight","objective":"temp"}}]
tellraw @a [{"text":"[Storage Votelight] - ","color":"yellow"},{"nbt":"current_votelight","storage":"joelbotc"}]
tellraw @a [{"text":"[Current Player] - ","color":"yellow"},{"score":{"name":"#current_player","objective":"temp"}}]
tellraw @a [{"text":"[Current Seat] - ","color":"yellow"},{"score":{"name":"#current_seat","objective":"temp"}}]
# tellraw @a [{"text":"[Seat] - ","color":"yellow"},{"score":{"name":"#seat","objective":"temp"}}]

