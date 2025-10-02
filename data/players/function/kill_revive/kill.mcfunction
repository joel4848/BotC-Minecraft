# call with players:kill_revive/kill {player:%d}

$scoreboard players set @a[scores={Player=-$(player)}] Alive 0
$item replace entity @a[scores={Player=-$(player)}] armor.feet with golden_boots 1
$team join Dead @a[scores={Player=-$(player)}]

$data merge storage joelbotc {player:$(player)}
$data modify storage joelbotc player_username set from storage joelbotc player_$(player)_username
function players:kill_revive/give_head with storage joelbotc