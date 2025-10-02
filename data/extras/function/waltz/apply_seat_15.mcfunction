# Apply seat 15 assignment to the executing player

execute as @a[scores={WaltzNewSeat=15}] run scoreboard players set @s Player -15
scoreboard players set #picked_picker temp 15

execute as @a[scores={WaltzNewSeat=15}] run function players:usernames/update_username/player_15

function setup:fm_colours_clear_all