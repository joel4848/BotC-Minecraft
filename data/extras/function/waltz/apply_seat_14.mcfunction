# Apply seat 14 assignment to the executing player

execute as @a[scores={WaltzNewSeat=14}] run scoreboard players set @s Player -14
scoreboard players set #picked_picker temp 14

execute as @a[scores={WaltzNewSeat=14}] run function players:usernames/update_username/player_14

function setup:fm_colours_clear_all