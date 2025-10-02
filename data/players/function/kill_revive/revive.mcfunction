# call with players:kill_revive/revive {player:%d}

$scoreboard players set @a[scores={Player=-$(player)}] Alive 1
$team join Alive @a[scores={Player=-$(player)}]

$execute as @e[tag=votelight$(player)] at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_copper_bulb[lit=false]