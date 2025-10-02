# Apply seat 2 assignment to the executing player

execute as @a[scores={WaltzNewSeat=2}] run scoreboard players set @s Player -2
scoreboard players set #picked_picker temp 2

execute as @a[scores={WaltzNewSeat=2}] run function players:usernames/update_username/player_2

function setup:fm_colours_clear_all