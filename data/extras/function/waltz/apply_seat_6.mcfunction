# Apply seat 6 assignment to the executing player

execute as @a[scores={WaltzNewSeat=6}] run scoreboard players set @s Player -6
scoreboard players set #picked_picker temp 6

execute as @a[scores={WaltzNewSeat=6}] run function players:usernames/update_username/player_6

function setup:fm_colours_clear_all