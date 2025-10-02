# call with execution:mark {player:%d}

# reset marked player

effect clear @a[scores={Marked=1}] glowing
scoreboard players set @a Marked 0

# mark new player

$scoreboard players set @a[scores={Player=-$(player)}] Marked 1
$team join Marked @a[scores={Player=-$(player)}]
$effect give @a[scores={Player=-$(player)}] glowing infinite 99 true

function nomination:marked_particles