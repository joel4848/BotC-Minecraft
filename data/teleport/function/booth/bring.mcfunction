# call with teleport:booth/bring {player:%d}

$scoreboard players set @a[scores={Player=-$(player)}] Booth 1
$teleport @a[scores={Player=-$(player)}] @e[limit=1,tag=boothplayer,type=marker]

function teleport:booth/bring_storyteller