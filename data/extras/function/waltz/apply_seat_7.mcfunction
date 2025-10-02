# Apply seat 7 assignment to the executing player

execute as @a[scores={WaltzNewSeat=7}] run scoreboard players set @s Player -7
scoreboard players set #picked_picker temp 7

execute as @a[scores={WaltzNewSeat=7}] run function players:usernames/update_username/player_7

function setup:fm_colours_clear_all