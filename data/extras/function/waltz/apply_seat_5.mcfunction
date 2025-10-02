# Apply seat 5 assignment to the executing player

execute as @a[scores={WaltzNewSeat=5}] run scoreboard players set @s Player -5
scoreboard players set #picked_picker temp 5

execute as @a[scores={WaltzNewSeat=5}] run function players:usernames/update_username/player_5

function setup:fm_colours_clear_all