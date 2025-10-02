# Apply seat 1 assignment to the executing player

execute as @a[scores={WaltzNewSeat=1}] run scoreboard players set @s Player -1
scoreboard players set #picked_picker temp 1

execute as @a[scores={WaltzNewSeat=1}] run function players:usernames/update_username/player_1

function setup:fm_colours_clear_all