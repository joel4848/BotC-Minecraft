# call with extras:seat_swap/swap {player1:%d,player2:%d}

$scoreboard players set @a[scores={Player=-$(player2)}] SeatSwapped 1 
$scoreboard players set @a[scores={Player=-$(player1)}] Player -$(player2)
$scoreboard players set @a[scores={SeatSwapped=1}] Player -$(player1)
scoreboard players reset @a[scores={SeatSwapped=1}] SeatSwapped

$execute as @a[scores={Player=-$(player1)}] run function players:username/update_username/player_$(player1)
$execute as @a[scores={Player=-$(player2)}] run function players:username/update_username/player_$(player2)

function setup:fm_colours_clear_all
function teleport:tp_all_to_seats

clear @a compass
scoreboard players set #compasses_given temp 0
