# Apply seat 4 assignment to the executing player

execute as @a[scores={WaltzNewSeat=4}] run scoreboard players set @s Player -4
scoreboard players set #picked_picker temp 4

execute as @a[scores={WaltzNewSeat=4}] run function players:usernames/update_username/player_4

function setup:fm_colours_clear_all