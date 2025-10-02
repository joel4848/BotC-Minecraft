# Apply seat 11 assignment to the executing player

execute as @a[scores={WaltzNewSeat=11}] run scoreboard players set @s Player -11
scoreboard players set #picked_picker temp 11

execute as @a[scores={WaltzNewSeat=11}] run function players:usernames/update_username/player_11

function setup:fm_colours_clear_all