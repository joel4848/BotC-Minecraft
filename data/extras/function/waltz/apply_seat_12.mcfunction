# Apply seat 12 assignment to the executing player

execute as @a[scores={WaltzNewSeat=12}] run scoreboard players set @s Player -12
scoreboard players set #picked_picker temp 12

execute as @a[scores={WaltzNewSeat=12}] run function players:usernames/update_username/player_12

function setup:fm_colours_clear_all