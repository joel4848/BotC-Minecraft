# Apply seat 10 assignment to the executing player

execute as @a[scores={WaltzNewSeat=10}] run scoreboard players set @s Player -10
scoreboard players set #picked_picker temp 10

execute as @a[scores={WaltzNewSeat=10}] run function players:usernames/update_username/player_10

function setup:fm_colours_clear_all