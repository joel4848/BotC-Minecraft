# Apply seat 13 assignment to the executing player

execute as @a[scores={WaltzNewSeat=13}] run scoreboard players set @s Player -13
scoreboard players set #picked_picker temp 13

execute as @a[scores={WaltzNewSeat=13}] run function players:usernames/update_username/player_13

function setup:fm_colours_clear_all