# Apply seat 9 assignment to the executing player

execute as @a[scores={WaltzNewSeat=9}] run scoreboard players set @s Player -9
scoreboard players set #picked_picker temp 9

execute as @a[scores={WaltzNewSeat=9}] run function players:usernames/update_username/player_9

function setup:fm_colours_clear_all