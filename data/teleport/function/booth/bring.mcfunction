# call with teleport:booth/bring {player:%d}

$scoreboard players set @a[scores={Player=-$(player)}] Booth 1
$execute at @e[limit=1,tag=boothplayer,type=marker] run teleport @a[scores={Player=-$(player)}] ~ ~ ~ facing entity @e[limit=1,tag=boothstoryteller,type=marker]

function teleport:booth/bring_storyteller