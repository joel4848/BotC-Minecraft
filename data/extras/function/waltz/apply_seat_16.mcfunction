# Apply seat 16 assignment to the executing player

execute as @a[scores={WaltzNewSeat=16}] run scoreboard players set @s Player -16
scoreboard players set #picked_picker temp 16

execute as @a[scores={WaltzNewSeat=16}] run function players:usernames/update_username/player_16

function setup:fm_colours_clear_all