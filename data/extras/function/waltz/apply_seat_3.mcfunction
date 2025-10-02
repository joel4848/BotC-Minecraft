# Apply seat 3 assignment to the executing player

execute as @a[scores={WaltzNewSeat=3}] run scoreboard players set @s Player -3
scoreboard players set #picked_picker temp 3

execute as @a[scores={WaltzNewSeat=3}] run function players:usernames/update_username/player_3

function setup:fm_colours_clear_all