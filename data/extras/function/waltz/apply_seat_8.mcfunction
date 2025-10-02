# Apply seat 8 assignment to the executing player

execute as @a[scores={WaltzNewSeat=8}] run scoreboard players set @s Player -8
scoreboard players set #picked_picker temp 8

execute as @a[scores={WaltzNewSeat=8}] run function players:usernames/update_username/player_8

function setup:fm_colours_clear_all